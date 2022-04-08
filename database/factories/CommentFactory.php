<?php

namespace Database\Factories;

use App\Models\Comment;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class CommentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'post_id' => Post::all()->random()->id,
            'is_active' => $this->faker->randomElement([Comment::ACTIVECOMMENT, Comment::INACTIVECOMMENT]),
            'author' => User::all()->random()->name,
            'email' => User::all()->random()->email,
            'body' => $this->faker->paragraph(1)
        ];
    }
}
