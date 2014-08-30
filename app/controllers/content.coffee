'use strict'

app = angular.module('kickassFactsRssApp')
app.controller 'ContentCtrl', ($scope, $timeout) ->

  cleanEntry = (entry) ->
    console.log("entry", entry)
    entry.content = entry.content.replace /\<p\>\<span\>\<\/span\>\<\/p\>/g, ''
    entry.content = entry.content.replace /\<p\>(\s*<br\s*\/?>\s*)+\<\/p\>/g, ''
    $scope.entry = entry

    steroids.view.navigationBar.show { title: $scope.entry.title }


  window.addEventListener "message", (event) ->
    if event.data.recipient is "ContentCtrl" and event.data.message is "loadEntry"
      $timeout ->
        cleanEntry(event.data.entry)