<h2 class="text-center"><i class="fa fa-bars"></i> Task List</h2><br/>
<div class="row">
    <div class="col-md-1">
        <p class="text-center" style="font-size: larger;font-weight: 900">Done?</p>
    </div>
    <div class="col-md-9">
        <p class="text-center" style="font-size: larger;font-weight: 900">Title(<span style="font-size: small">Place your mouse over title of a task to see description!</span>)</p>
    </div>
    <div class="col-md-2">
        <p class="text-center" style="font-size: larger;font-weight: 900">Task Date</p>
    </div>
</div>
<div class="well well-lg" ng-repeat="task in tasks.taskList">
    <div class="row">
        <div class="col-md-1">
            <input type="checkbox" name="done" />
        </div>
        <div class="col-md-9" style="font-size: large">
            <p class="text-center text-info" custom-popover popover-html="{{task.description}}" popover-placement="bottom" popover-label="{{task.title}}"></p>
        </div>
        <div class="col-md-2" ng-bind="task.taskEndDate |date:'longDate'">
        </div>
    </div>
</div>
<p class="text-center">Initiated By- <a href="https://github.com/hitenpratap" target="_blank">Hiten Pratap Singh</a> </p>