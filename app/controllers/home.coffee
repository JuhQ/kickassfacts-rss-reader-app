'use strict'

app = angular.module('kickassFactsRssApp')
app.controller 'HomeCtrl', ($scope, $timeout) ->
  $scope.open = (entry) ->
    window.postMessage({recipient: "ContentCtrl", message: "loadEntry", entry})
    webView = new steroids.views.WebView({location: "/views/content/index.html", id: "contentView"})
    steroids.layers.push webView