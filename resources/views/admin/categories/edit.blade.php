@extends('layouts.admin')

@section('content')

    <!-- Create category side -->
    <div class="col-sm-8">
        <h2 class="text-center bg-info">Edit Category</h2>
        <hr>

        {!! Form::model($category, ['method'=>'PATCH', 'route'=>['categories.update', $category->id]]) !!}
        <div class="form-group">
            {!! Form::label('name', 'Category Name: ') !!}
            {!! Form::text('name', null, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::submit('Update Category', ['class'=>'btn btn-primary']) !!}
        </div>
        {!! Form::close() !!}

    </div>

@stop
