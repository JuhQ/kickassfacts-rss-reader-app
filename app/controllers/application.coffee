steroids.view.setBackgroundColor("#ffffff")

angular.module("rss", [])
  .directive "rss", ->
    restrict: "E"
    template: """
      <div class="list">
        <div
          class="item item-icon-right"
          ng-repeat="entry in entries"
          ng-click="open(entry)">
            <h2>{{entry.title}}</h2>
            <p>{{entry.unixtime | date:'longDate'}}</p>
            <i class="icon ion-ios7-arrow-right"></i>
        </div>
      </div>
    """
    controller: ($scope) ->
      normalizeFeed = (url) ->
        $.getJSON("//ajax.googleapis.com/ajax/services/feed/load?v=1.0&output=json&q=#{encodeURIComponent(url)}&hl=en&callback=?")


      feed = normalizeFeed('http://kickassfacts.com/feed/')
      feed.done (data) ->

        console.log("data", data)
        $scope.entries = _.map data.responseData.feed.entries, (entry) ->
          entry.unixtime = (new Date(entry.publishedDate)).getTime()
          entry

        $scope.$apply()



app = angular.module('kickassFactsRssApp', [
  'rss'
])


app.filter "trustAsHtml", ($sce) ->
  (content) ->
    $sce.trustAsHtml content
