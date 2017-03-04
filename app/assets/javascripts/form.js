//= require classie


$(document).ready(function(){

    [].slice.call( document.querySelectorAll( 'input.text_input' ) ).forEach( function( inputEl ) {
        // in case the input is already filled..
        if( inputEl.value.trim() !== '' ) {
            classie.add( inputEl.parentNode, 'has_value' );
        }

        // events:
        inputEl.addEventListener( 'blur', onInputBlur );
    } );

    function onInputBlur( ev ) {
        if( ev.target.value.trim() !== '' ) {
            classie.add( ev.target.parentNode, 'has_value' );
        }
        else{
            classie.remove( ev.target.parentNode, 'has_value' );
        }
    }
});