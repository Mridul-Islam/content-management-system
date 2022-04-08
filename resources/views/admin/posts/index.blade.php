@extends('layouts.admin')

@section('content')

    @if(count($posts) > 0)

        <h2 class="text-center bg-info">All Posts</h2>
        <hr>

        @if(Session::has('created_post'))
            <p class="bg-success text-center"> {{ session('created_post') }} </p>
        @endif
        @if(Session::has('post_updated'))
            <p class="bg-success text-center"> {{ session('post_updated') }} </p>
        @endif
        @if(Session::has('post_deleted'))
            <p class="bg-success text-center"> {{ session('post_deleted') }} </p>
        @endif

        <table class="table table-responsive table-hover table-bordered table-striped">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>User</th>
                    <th>Category</th>
                    <th>Title</th>
                    <th>Body</th>
                    <th>Image</th>
                    <th>Created_at</th>
                    <th>Updated_at</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
            @foreach($posts as $post)
                <tr>
                    <td>{{ $post->id }}</td>
                    <td>{{ $post->user->name }}</td>
                    <td>{{ $post->category_id ? $post->category->name: 'Un-categorized' }}</td>
                    <td>{{ $post->title }}</td>
                    <td>{{ Str::limit($post->body, 30) }}</td>
                    <td><img src="{{ $post->photo_id? $post->photo->image: "/images/image-placeholder.png" }}" alt="post-image" height="80px" width="120px" /></td>
                    <td>{{ $post->created_at->diffForHumans() }}</td>
                    <td>{{ $post->updated_at->diffForHumans() }}</td>
                    <td><a href="{{ route('posts.edit', $post->id) }}" class="btn btn-primary">Edit</a></td>
                    <!-- Delete form -->
                    <td>
                        {!! Form::open(['method'=>'DELETE', 'route'=>['posts.destroy', $post->id]]) !!}
                            {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        @else
            <h2 class="text-center bg-info">No Post Available..</h2>
    @endif

@stop
