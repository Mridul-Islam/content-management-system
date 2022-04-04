<?php

namespace App\Http\Controllers;

use App\Models\Photo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class AdminMediasController extends Controller
{
    public function index()
    {
        $photos = Photo::all();
        return view('admin.media.index', compact('photos'));
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        $photo = Photo::findOrFail($id);
        unlink(public_path() . $photo->image);
        $photo->delete();
        Session::flash('deleted_photo', 'The Photo has been deleted successfully..');
        return redirect('/admin/media');
    }
}
