@extends('layouts.admin')

@section('content')

    <!-- Create category side -->
    <div class="col-sm-6">
        <h2 class="text-center bg-info">Create Category</h2>
        <hr>

        @if(Session::has('category_created'))
            <p class="bg-success text-center">{{ session('category_created') }}</p>
        @endif
        @if(Session::has('updated_category'))
            <p class="bg-success text-center">{{ session('updated_category') }}</p>
        @endif

        {!! Form::open(['method'=>'post', 'route'=>'categories.store']) !!}
            <div class="form-group">
                {!! Form::label('name', 'Category Name: ') !!}
                {!! Form::text('name', null, ['class'=>'form-control']) !!}
            </div>
            <div class="form-group">
                {!! Form::submit('Create Category', ['class'=>'btn btn-primary']) !!}
            </div>
        {!! Form::close() !!}

    </div>

    <!-- Show all category side -->
    <div class="col-sm-6">
        <h2 class="text-center bg-info">All Categories</h2>
        <hr>
        @if(Session::has('category_deleted'))
            <p class="bg-success text-center">{{ session('category_deleted') }}</p>
        @endif

        @if(count($categories) > 0)
            <table class="table table-striped table-bordered table-hover table-responsive">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($categories as $category)
                        <tr>
                            <td>{{ $category->id }}</td>
                            <td>{{ $category->name }}</td>
                            <td><a class="btn btn-primary" href="{{ route('categories.edit', $category->id) }}">Edit</a></td>

                            <!-- Category delete form -->
                            <td>
                                {!! Form::open(['method'=>'DELETE', 'route'=>['categories.destroy', $category->id]]) !!}
                                    {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                                {!! Form::close() !!}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

        @else
            <h2 class="text-center">No Categories Available</h2>

        @endif

    </div>

@stop
