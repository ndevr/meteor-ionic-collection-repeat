<div ng-controller="MainCtrl">
    <ion-header-bar class="bar-positive">
        <h1 class="title">3000 Contacts</h1>
        <div class="button" ng-click="scrollBottom()">
            Scroll To Bottom
        </div>
    </ion-header-bar>
    <ion-header-bar class="bar-light bar-subheader">
        <input type="search"
               placeholder="Filter contacts..."
               ng-model="search"
               ng-focus="searchFocused = true"
               ng-blur="searchFocused = false"
               ng-change="scrollTop()">
        <button ng-if="search.length"
                class="button button-icon ion-android-close input-button"
                ng-click="clearSearch()">
        </button>
    </ion-header-bar>
    <ion-content>
        <div class="list">
            <a class="item my-item"
               collection-repeat="item in getContacts()"
               collection-item-height="getItemHeight(item)"
               collection-item-width="getItemWidth(item)"
               ng-href="https://www.google.com/#q={{item.first_name + '+' + item.last_name}}"
               ng-style="{'line-height': getItemHeight(item) + 'px'}"
               ng-class="{'item-divider': item.isLetter}">
                <img ng-if="!item.isLetter" ng-src="http://placekitten.com/60/{{55 + ($index % 10)}}">
                {{item.letter || (item.first_name+' '+item.last_name)}}
            </a>
        </div>
    </ion-content>
</div>