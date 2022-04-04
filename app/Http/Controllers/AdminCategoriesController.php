<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class AdminCategoriesController extends Controller
{

    public function index()
    {
        $categories = Category::all();

        return view('admin.categories.index', compact('categories'));
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        Category::create($request->all());
        Session::flash('category_created', 'The Category has been created successfully..');
        return redirect('/admin/categories');
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $category = Category::findOrFail($id);
        return view('admin.categories.edit', compact('category'));
    }


    public function update(Request $request, $id)
    {
        $category = Category::findOrFail($id);

        $category->update($request->all());
        Session::flash('updated_category', 'The Category has been updated successfully..');
        return redirect('/admin/categories');
    }


    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        Session::flash('category_deleted', 'The Category has been deleted successfully..');
        return redirect('/admin/categories');
    }
}
