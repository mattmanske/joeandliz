!function(){$(function(){var t;return $("#logo > h1").fitText(1.2,{minFontSize:"36px",maxFontSize:"50px"}),$("#logo > h2").fitText(2,{minFontSize:"19px",maxFontSize:"28px"}),$("#bridalparty > a").click(function(){return $("#bridalparty").attr("data-showing",1)}),$("#bridalparty .headshot-icons li").click(function(){return $("#bridalparty").attr("data-showing",$(this).data("slide"))}),t=new Firebase("https://joeandliz.firebaseIO.com/"),$("form").submit(function(a){var e,i;return a.preventDefault(),e=$('button[type="submit"]'),i={code:$('input[name="invite-code"]').val(),email:$('input[name="email"]').val(),people:$('input[name="who"]').val(),message:$('textarea[name="message"]').val()},e.text("...sending...").addClass("loading"),t.push(i,function(t){return e.removeAttr("class"),t?(e.text("Error!").addClass("error"),setTimeout(function(){return e.html("Try Again").removeAttr("class")},1750)):(e.text("Awesome, Thanks!").addClass("success"),$("input, textarea, button","form").attr("disabled",!0))})}),$(".cover-image").click(function(){var t;return t=$("iframe")[0],$f(t).api("play"),$(this).addClass("fading"),setTimeout(function(){return $("iframe").addClass("playing")},1e3)})})}.call(this);