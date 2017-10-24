<template>
  <div class="wrapper" @click="update" >
    <image :src="logoUrl" class="logo" ref='image'></image>
    <!--<text class="title">Hello {{target}}</text>-->
    <text class="desc" @click="createPhoto">加大头针</text>
    <text class="desc" @click="createAction">移除大头针</text>
    <!--<text class="desc" @click="scanQR">扫码</text>-->
    <!--<text class="desc" @click="share">分享</text>-->

    <WXMapComponent ref='WXMapComponent' class="map"   mapkey="85dce3c69f70a9615e56519b8e7ecb0b" zoomLevel="15" mapType="0" showsUserLocation="1">

    </WXMapComponent>
    <!--<image class="img" style="width: 300px; height: 300px;" src="xcassets:reload"></image>-->


  </div>
</template>

<style>
  .haha{
    width: 100px;
    height: 100px;
    background-color: blue;
    position: relative;
    margin-left: 30px;
    opacity: 0.5;
  }
  .wrapper { display: flex; width: 750px;height: 1160PX}
  .map { margin-top: 0px; margin-bottom: 0px;  flex: 1;
  }
  .title { padding-top:40px; padding-bottom: 40px; font-size: 48px; }
  .logo { width: 300px; height: 156px;  }
  .desc { padding-top: 20px; color:#888; font-size: 40px;}
</style>

<script>
    var WXShareModule = weex.requireModule('weexShareSdk');

    WXShareModule.registerSDK({"WeiXinAppKey":"wxfeb76ead8897a5ae","WeiXinAppSecret":"47386f68c9627ba55cebfc98283f74b6","QQAppKey":"1105424297","QQAppSecret":"Pp45uyixguxIMhk5"},function(ret) {
        modal.toast({
            message: JSON.stringify(ret),
            duration: 0.7
        })
    });

    const utils = require('./utils');
    var globalEvent = weex.requireModule('globalEvent');
    globalEvent.addEventListener("applicationDidEnterBackground", function (e) {
        var modal = weex.requireModule('modal')
        modal.toast({
            message: JSON.stringify(e),
            duration: 0.3
        })
    });

//    {points:[{latitude:39.938698,longitude:116.275177},{latitude:39.966069,longitude:116.289253},{latitude:39.944226,longitude:116.306076},{latitude:39.966069,longitude:116.322899},{latitude:39.938698,longitude:116.336975}],
//        fillColor:"#B0E0E6",
//        strokeColor:"#DC143C",
//        lineWidth:20,
//        lineJoinType:1,
//        lineCapType:2,
//        miterLimit:10,
//        lineDash:1,
//        ID:0,
//    }
  export default {
    data: {
      logoUrl: 'http://img1.vued.vanthink.cn/vued08aa73a9ab65dcbd360ec54659ada97c.png',
      target: 'World',
        sss:{

            latitude:31.139111,
            longitude:121.71656,
            fillColor:"#191970",
            strokeColor:"#B0E0E6",
            lineWidth:4,
            radius:1000,
            ID:0,
            alpha:0.3
      }

    },
    methods: {
      update: function (e) {
        this.target = 'Weex'
        console.log('target:', this.target)
      },
        createAction: function(result) {

            var modal = weex.requireModule('modal')
            modal.toast({
                message: JSON.stringify(result),
                duration: 0.3
            })

//            this.$refs.WXMapComponent.removeCircleOverlay(
//
//                "0"
//            );
        }
        ,
        createPhoto:function () {
//          this.$refs.WXMapComponent.addCircleOverlay(
//              this.sss
//          );
            WXShareModule.share({"title":"weex","text":"测试","url":"https://www.baidu.com"},function (ret) {
                var modal = weex.requireModule('modal')
                modal.toast({
                    message: JSON.stringify(ret),
                    duration: 0.7
                })
            });
//            var navigator = weex.requireModule('navigator');
//            const url = this.$getConfig().bundleUrl;
//            var url2 = url.split('/').slice(0,-1).join('/') + '/index2.js';
//            var modal = weex.requireModule('modal')
//            modal.toast({
//                message: url,
//                duration: 0.3
//            });
//            navigator.push({
//                url: url2,
//                animated: "true"
//            }, event => {
//                modal.toast({ message: 'callback: ' + event })
//            })
//            var WXCameraModule = weex.requireModule('WXCameraModule');
//            WXCameraModule.takePhoto({"type":"photoAlbum"},function(ret) {
//                nativeLog(ret);
//                WXCameraModule=null;
//            });

        },
        scanQR:function () {
            var WXScanQRModule = weex.requireModule('weexScanQR');
            WXScanQRModule.scanQR("测试扫一扫",function(ret) {
                var modal = weex.requireModule('modal')
                modal.toast({
                    message: JSON.stringify(ret),
                    duration: 0.3
                })
            });
        },
        share:function () {
            WXShareModule.share({"title":"weex","text":"测试","url":"https://www.baidu.com"},function (ret) {
                var modal = weex.requireModule('modal')
                modal.toast({
                    message: JSON.stringify(ret),
                    duration: 0.7
                })
            });
        }
    }
  }

</script>