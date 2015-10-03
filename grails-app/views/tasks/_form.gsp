<div class="form-group col-md-8">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" name="title" ng-model="task.title" required="required">
</div>

<div class="form-group col-md-4">
    <label for="taskDate">Task date</label>
    <div class="input-group">
        <input type="text" name="taskDate" id="taskDate" class="form-control" ng-model="task.taskDate" required="required" jqdatepicker>
        <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
    </div>
</div>

<div class="form-group col-md-12">
    <label for="description">Description</label>
    <textarea name="description" id="description" class="form-control" ng-model="task.description" rows="8"></textarea>
</div>

<div class="form-group col-md-6">
    <input type="submit" class="form-control btn-primary">
</div>

<div class="form-group col-md-6">
    <input type="reset" class="form-control btn-default">
</div>

<p class="text-center">Initiated By- <a href="https://github.com/hitenpratap" target="_blank">Hiten Pratap Singh</a> </p>