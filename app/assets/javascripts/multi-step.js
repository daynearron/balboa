(function($) {
    $.fn.multistep = function(options) {
        options = $.extend({  
            stepSelector            : '.step',
            actions                 : '.actions',
            onAfterShowStep         : null,
            onBeforeShowNextStep    : null,
            onBeforeShowPrevStep    : null,
            onBeforePrev            : null,
            prevButtonText          : 'Back',
            nextButtonText          : 'Next'
        }, options); 
        

        var form = this;
        var steps = $(form).find(options.stepSelector);
        var count = steps.size();
        var actions = form.find(options.actions).hide();
        var currentStep = steps.filter(':first');


        steps.filter(':first').addClass('first');
        steps.filter(':last').addClass('last');


        /*
         * add the required elements and metadata to each step
         */
        steps.each(function(i) {
            var step = $(this);
            var name = step.data("title");
            
            step.data('step-number', i);
            step.attr('id', 'step-' + i);
            step.append("<div class='prev-next'></div>");        

            if (i == 0) {
                createNextButton(step);
            }
            else if (i == count - 1) {
                hideStep(step);
                createPrevButton(step);
            }
            else {
                hideStep(step);
                createPrevButton(step);
                createNextButton(step);
            }
        });

        
        /*
         * Previous step button event handler
         */
        form.find('.prev.button').live('click', function(){
            // check if the onBeforeShowPrevStep callback has been set
            // if it returns false, we do not step back. This is mainly 
            // for hooking in validation 
            if(typeof options.onBeforeShowPrevStep == 'function') {
                var result = options.onBeforeShowPrevStep(currentStep);
                if(result === false) return false;
            }

            hideStep(currentStep);
            showStep(currentStep.prev(options.stepSelector));
            return false;
        });


        /*
         * Next step button event handler
         */
        form.find('.next.button').live('click', function(){
            // check if the onBeforeShowNextStep callback has been set
            // if it returns false, we do not advance. This is mainly 
            // for hooking in validation 
            if(typeof options.onBeforeShowNextStep == 'function') {
                console.log('1');
                var result = options.onBeforeShowNextStep(currentStep);
                if(result === false) return false;
            }
        
            hideStep(currentStep);
            showStep(currentStep.next(options.stepSelector));
            return false;
        });

        
        /*
         * Hide the given step
         */
        function hideStep(step){
            step.find(':input').addClass('ignore-validation'); 
            step.hide();
        }


        /*
         * Show the given step
         */
        function showStep(step){
            step.find(':input').removeClass('ignore-validation');
            step.show().find(':input').first().focus();

            $('html, body').animate({
                scrollTop: form.offset().top -50
            }, 1, function(){
                if(typeof options.onAfterShowStep == 'function') options.onAfterShowStep(step);
            });  

            // show or hide the actions, depending on which step we're on
            if(!step.is('.last')){
                actions.hide();
            }else{
                actions.show();
            }

            currentStep = step;
        }


        /*
         * Create the previous step button
         */
        function createPrevButton(step) {
            step.find('.prev-next:first').append("<button class='prev button'>" + options.prevButtonText + "</button>");
        }


        /*
         * Create the next step button
         */
        function createNextButton(step) {
            step.find('.prev-next:first').append("<button class='next button'>" + options.nextButtonText + "</button>");
        }

    }
})(jQuery); 