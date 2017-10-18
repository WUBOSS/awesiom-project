// { "framework": "Vue"} 

!function(e){function t(r){if(n[r])return n[r].exports;var o=n[r]={i:r,l:!1,exports:{}};return e[r].call(o.exports,o,o.exports,t),o.l=!0,o.exports}var n={};t.m=e,t.c=n,t.i=function(e){return e},t.d=function(e,n,r){t.o(e,n)||Object.defineProperty(e,n,{configurable:!1,enumerable:!0,get:r})},t.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(n,"a",n),n},t.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},t.p="",t(t.s=9)}([function(e,t,n){"use strict";!function(e){function t(r){if(n[r])return n[r].exports;var o=n[r]={i:r,l:!1,exports:{}};return e[r].call(o.exports,o,o.exports,t),o.l=!0,o.exports}var n={};t.m=e,t.c=n,t.i=function(e){return e},t.d=function(e,n,r){t.o(e,n)||Object.defineProperty(e,n,{configurable:!1,enumerable:!0,get:r})},t.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(n,"a",n),n},t.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},t.p="",t(t.s=1)}([function(e,t,n){},function(e,t,n){e.exports=n(0)}])},function(e,t){e.exports=function(){var e=[];return e.toString=function(){for(var e=[],t=0;t<this.length;t++){var n=this[t];n[2]?e.push("@media "+n[2]+"{"+n[1]+"}"):e.push(n[1])}return e.join("")},e.i=function(t,n){"string"==typeof t&&(t=[[null,t,""]]);for(var r={},o=0;o<this.length;o++){var i=this[o][0];"number"==typeof i&&(r[i]=!0)}for(o=0;o<t.length;o++){var a=t[o];"number"==typeof a[0]&&r[a[0]]||(n&&!a[2]?a[2]=n:n&&(a[2]="("+a[2]+") and ("+n+")"),e.push(a))}},e}},function(e,t){e.exports=function(e,t,n,r){var o,i=e=e||{},a=typeof e.default;"object"!==a&&"function"!==a||(o=e,i=e.default);var s="function"==typeof i?i.options:i;if(t&&(s.render=t.render,s.staticRenderFns=t.staticRenderFns),n&&(s._scopeId=n),r){var u=s.computed||(s.computed={});Object.keys(r).forEach(function(e){var t=r[e];u[e]=function(){return t}})}return{esModule:o,exports:i,options:s}}},function(e,t,n){function r(e){for(var t=0;t<e.length;t++){var n=e[t],r=p[n.id];if(r){r.refs++;for(var o=0;o<r.parts.length;o++)r.parts[o](n.parts[o]);for(;o<n.parts.length;o++)r.parts.push(i(n.parts[o]));r.parts.length>n.parts.length&&(r.parts.length=n.parts.length)}else{for(var a=[],o=0;o<n.parts.length;o++)a.push(i(n.parts[o]));p[n.id]={id:n.id,refs:1,parts:a}}}}function o(){var e=document.createElement("style");return e.type="text/css",d.appendChild(e),e}function i(e){var t,n,r=document.querySelector('style[data-vue-ssr-id~="'+e.id+'"]');if(r){if(h)return v;r.parentNode.removeChild(r)}if(g){var i=f++;r=l||(l=o()),t=a.bind(null,r,i,!1),n=a.bind(null,r,i,!0)}else r=o(),t=s.bind(null,r),n=function(){r.parentNode.removeChild(r)};return t(e),function(r){if(r){if(r.css===e.css&&r.media===e.media&&r.sourceMap===e.sourceMap)return;t(e=r)}else n()}}function a(e,t,n,r){var o=n?"":r.css;if(e.styleSheet)e.styleSheet.cssText=m(t,o);else{var i=document.createTextNode(o),a=e.childNodes;a[t]&&e.removeChild(a[t]),a.length?e.insertBefore(i,a[t]):e.appendChild(i)}}function s(e,t){var n=t.css,r=t.media,o=t.sourceMap;if(r&&e.setAttribute("media",r),o&&(n+="\n/*# sourceURL="+o.sources[0]+" */",n+="\n/*# sourceMappingURL=data:application/json;base64,"+btoa(unescape(encodeURIComponent(JSON.stringify(o))))+" */"),e.styleSheet)e.styleSheet.cssText=n;else{for(;e.firstChild;)e.removeChild(e.firstChild);e.appendChild(document.createTextNode(n))}}var u="undefined"!=typeof document;if("undefined"!=typeof DEBUG&&DEBUG&&!u)throw new Error("vue-style-loader cannot be used in a non-browser environment. Use { target: 'node' } in your Webpack config to indicate a server-rendering environment.");var c=n(4),p={},d=u&&(document.head||document.getElementsByTagName("head")[0]),l=null,f=0,h=!1,v=function(){},g="undefined"!=typeof navigator&&/msie [6-9]\b/.test(navigator.userAgent.toLowerCase());e.exports=function(e,t,n){h=n;var o=c(e,t);return r(o),function(t){for(var n=[],i=0;i<o.length;i++){var a=o[i],s=p[a.id];s.refs--,n.push(s)}t?(o=c(e,t),r(o)):o=[];for(var i=0;i<n.length;i++){var s=n[i];if(0===s.refs){for(var u=0;u<s.parts.length;u++)s.parts[u]();delete p[s.id]}}}};var m=function(){var e=[];return function(t,n){return e[t]=n,e.filter(Boolean).join("\n")}}()},function(e,t){e.exports=function(e,t){for(var n=[],r={},o=0;o<t.length;o++){var i=t[o],a=i[0],s=i[1],u=i[2],c=i[3],p={id:e+":"+o,css:s,media:u,sourceMap:c};r[a]?r[a].parts.push(p):n.push(r[a]={id:a,parts:[p]})}return n}},function(e,t,n){n(16);var r=n(2)(n(7),n(14),null,null);r.options.__file="/Users/zhanshu1/Desktop/weex/awesiom-project/src/index.vue",r.esModule&&Object.keys(r.esModule).some(function(e){return"default"!==e&&"__esModule"!==e})&&console.error("named exports are not supported in *.vue files."),r.options.functional&&console.error("[vue-loader] index.vue: functional components are not supported with templates, they should use render functions."),e.exports=r.exports},,function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var r=weex.requireModule("WXShareModule");r.registerSDK({WeiXinAppKey:"wxfeb76ead8897a5ae",WeiXinAppSecret:"47386f68c9627ba55cebfc98283f74b6",QQAppKey:"1105424297",QQAppSecret:"Pp45uyixguxIMhk5"},function(e){modal.toast({message:JSON.stringify(e),duration:.7})}),t.default={data:{logoUrl:"http://img1.vued.vanthink.cn/vued08aa73a9ab65dcbd360ec54659ada97c.png",target:"World",sss:{latitude:"31.139111",longitude:"121.71656",latitudeDelta:"0.1",longitudeDelta:"0.1"}},methods:{update:function(e){this.target="Weex",console.log("target:",this.target)},createAction:function(){weex.requireModule("weexCamera").show()},createPhoto:function(){this.$refs.WXMapComponent.compassSize(function(e){weex.requireModule("modal").toast({message:JSON.stringify(e),duration:.7})})},scanQR:function(){weex.requireModule("weexScanQR").scanQR("测试扫一扫",function(e){weex.requireModule("modal").toast({message:JSON.stringify(e),duration:.3})})},share:function(){r.share({title:"weex",text:"测试",url:"https://www.baidu.com"},function(e){weex.requireModule("modal").toast({message:JSON.stringify(e),duration:.7})})}}}},,function(e,t,n){"use strict";n(0);var r=n(5);r.el="#root",new Vue(r)},,,function(e,t,n){t=e.exports=n(1)(),t.push([e.i,"\n.haha{\n  width: 100px;\n  height: 100px;\n  background-color: blue;\n  position: relative;\n  margin-left: 30px;\n  opacity: 0.5;\n}\n.wrapper { display: flex; width: 750px;height: 1160PX\n}\n.map { margin-top: 0px; margin-bottom: 0px;  flex: 1;\n}\n.title { padding-top:40px; padding-bottom: 40px; font-size: 48px;\n}\n.logo { width: 360px; height: 156px;\n}\n.desc { padding-top: 20px; color:#888; font-size: 40px;\n}\n",""])},,function(e,t,n){e.exports={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"wrapper",on:{click:e.update}},[n("text",{staticClass:"desc",on:{click:e.createPhoto}},[e._v("地图是否在国外")]),e._v(" "),n("WXMapComponent",{ref:"WXMapComponent",staticClass:"map",attrs:{mapkey:"85dce3c69f70a9615e56519b8e7ecb0b",zoomLevel:"15",mapType:"0",region:e.sss}})],1)},staticRenderFns:[]},e.exports.render._withStripped=!0},,function(e,t,n){var r=n(12);"string"==typeof r&&(r=[[e.i,r,""]]),r.locals&&(e.exports=r.locals);n(3)("9b4d0d72",r,!1)}]);