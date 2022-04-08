<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreatePostRequest;
use App\Http\Requests\EditPostRequest;
use App\Models\Category;
use App\Models\Photo;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AdminPostsController extends Controller
{

    public function index()
    {
        $posts = Post::all();

        return view('admin.posts.index', compact('posts'));
    }


    public function create()
    {
        $categories = Category::pluck('name', 'id')->all();

        return view('admin.posts.create', compact('categories'));
    }


    public function store(CreatePostRequest $request)
    {
        $user = Auth::user();
        $input = $request->all();
        if($file = $request->file('photo_id')){
            $name = time() . $file->getClientOriginalName();
            $photo = Photo::create(['image'=>$name]);
            $input['photo_id'] = $photo->id;
            $file->move('images', $name);
        }
        $user->posts()->create($input);
        Session::flash('created_post', 'The post has been created successfully');
        return redirect('/admin/posts');
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $categories = Category::pluck('name', 'id')->all();
        $post = Post::FindOrFail($id);

        return view('admin.posts.edit', compact('post', 'categories'));
    }


    public function update(EditPostRequest $request, $id)
    {
        $post = Post::findOrFail($id);
        $input = $request->all();
        if($file = $request->file('photo_id')){
            //delete previous files
            if($post->photo_id){
                $post->photo->delete();
                unlink(public_path() . $post->photo->image);
            }
            //add new files
            $name = time() . $file->getClientOriginalName();
            $file->move('images', $name);
            $photo = Photo::create(['image'=>$name]);
            $input['photo_id'] = $photo->id;
        }
        $post->update($input);
        Session::flash('post_updated','The Post has been updated successfully');
        return redirect('admin/posts');
    }


    public function destroy($id)
    {
        $post = Post::findOrFail($id);
        $post->photo->delete();
        unlink(public_path() . $post->photo->image);
        $post->delete();
        Session::flash('post_deleted', 'The post has been deleted successfully');
        return redirect('admin/posts');
    }
}
