(function(window) { 
    'use strict'; 

    var noback = { 
     
    //globals 
    version: '0.0.1', 
    history_api : typeof history.pushState !== 'undefined', 
     
    init:function(){ 
      window.location.hash = '#no-back'; 
      noback.configure(); 
    }, 
     
    hasChanged:function(){ 
      if (window.location.hash == '#no-back' ){ 
        window.location.hash = '#not-allowed';
        //mostra mensagem que não pode usar o btn volta do browser
        $('#proibido-voltar').modal('show');
      } 
    }, 
     
    checkCompat: function(){ 
      if(window.addEventListener) { 
        window.addEventListener("hashchange", noback.hasChanged, false); 
      }else if (window.attachEvent) { 
        window.attachEvent("onhashchange", noback.hasChanged); 
      }else{ 
        window.onhashchange = noback.hasChanged; 
      } 
    }, 
     
    configure: function(){ 
      if ( window.location.hash == '#no-back' ) { 
        if ( this.history_api ){ 
          history.pushState(null, '', '#not-allowed'); 
        }else{  
          window.location.hash = '#not-allowed';
          //mostra mensagem que não pode usar o btn volta do browser
          $('#proibido-voltar').modal('show');
        } 
      } 
      noback.checkCompat(); 
      noback.hasChanged(); 
    } 
     
    }; 
     
    // AMD support 
    if (typeof define === 'function' && define.amd) { 
      define( function() { return noback; } ); 
    }  
    // For CommonJS and CommonJS-like 
    else if (typeof module === 'object' && module.exports) { 
      module.exports = noback; 
    }  
    else { 
      window.noback = noback; 
    } 
    noback.init();
}
(window)
); 