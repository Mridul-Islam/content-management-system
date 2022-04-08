<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Comment;
use App\Models\CommentReply;
use App\Models\Post;
use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0');

        user::truncate();
        Category::truncate();
        Post::truncate();
        Comment::truncate();
        CommentReply::truncate();

        $usersQuantity = 5;
        $categoriesQuantity = 5;
        $postsQuantity = 20;
        $commentQuantity = 50;
        $commentReplyQuantity = 100;



        User::factory($usersQuantity)->create();
        Category::factory($categoriesQuantity)->create();
        Post::factory($postsQuantity)->create();
        Comment::factory($commentQuantity)->create();
        CommentReply::factory($commentReplyQuantity)->create();
    }
}
