<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
       
        
        User::create([
            'name' => 'Admin M3',
            'username' => 'admin',
            'email' => 'mangga3@gmail.com',
            'password' => bcrypt('354313')
        ]);

        // User::create([
        //     'name' => 'Sabilillah',
        //     'email' => 'sabil@gmail.com',
        //     'password' => bcrypt('354313')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Programming',
            'slug' => 'programming'

        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'

        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'

        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste quia molestiae aspernatur similique reiciendis',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste quia molestiae aspernatur similique reiciendis, itaque nihil ullam incidunt dignissimos quam placeat exercitationem eaque. Non aperiam magnam laborum dicta odit, possimus similique eum itaque omnis reiciendis vitae. A expedita sint omnis in, inventore corrupti eaque esse sequi cupiditate, aliquid, commodi error explicabo dicta provident cum rerum accusantium aspernatur ipsa illum! Illum nihil veritatis atque tempore impedit. Suscipit blanditiis sapiente, debitis natus ab vero quam voluptatibus aliquid repellendus recusandae impedit voluptatem! Ipsum perferendis impedit fuga tenetur laborum nobis beatae, placeat similique quibusdam at ullam aliquam. Suscipit dicta eum doloribus sit blanditiis minus.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste quia molestiae aspernatur similique reiciendis',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste quia molestiae aspernatur similique reiciendis, itaque nihil ullam incidunt dignissimos quam placeat exercitationem eaque. Non aperiam magnam laborum dicta odit, possimus similique eum itaque omnis reiciendis vitae. A expedita sint omnis in, inventore corrupti eaque esse sequi cupiditate, aliquid, commodi error explicabo dicta provident cum rerum accusantium aspernatur ipsa illum! Illum nihil veritatis atque tempore impedit. Suscipit blanditiis sapiente, debitis natus ab vero quam voluptatibus aliquid repellendus recusandae impedit voluptatem! Ipsum perferendis impedit fuga tenetur laborum nobis beatae, placeat similique quibusdam at ullam aliquam. Suscipit dicta eum doloribus sit blanditiis minus.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste quia molestiae aspernatur similique reiciendis',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste quia molestiae aspernatur similique reiciendis, itaque nihil ullam incidunt dignissimos quam placeat exercitationem eaque. Non aperiam magnam laborum dicta odit, possimus similique eum itaque omnis reiciendis vitae. A expedita sint omnis in, inventore corrupti eaque esse sequi cupiditate, aliquid, commodi error explicabo dicta provident cum rerum accusantium aspernatur ipsa illum! Illum nihil veritatis atque tempore impedit. Suscipit blanditiis sapiente, debitis natus ab vero quam voluptatibus aliquid repellendus recusandae impedit voluptatem! Ipsum perferendis impedit fuga tenetur laborum nobis beatae, placeat similique quibusdam at ullam aliquam. Suscipit dicta eum doloribus sit blanditiis minus.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste quia molestiae aspernatur similique reiciendis',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste quia molestiae aspernatur similique reiciendis, itaque nihil ullam incidunt dignissimos quam placeat exercitationem eaque. Non aperiam magnam laborum dicta odit, possimus similique eum itaque omnis reiciendis vitae. A expedita sint omnis in, inventore corrupti eaque esse sequi cupiditate, aliquid, commodi error explicabo dicta provident cum rerum accusantium aspernatur ipsa illum! Illum nihil veritatis atque tempore impedit. Suscipit blanditiis sapiente, debitis natus ab vero quam voluptatibus aliquid repellendus recusandae impedit voluptatem! Ipsum perferendis impedit fuga tenetur laborum nobis beatae, placeat similique quibusdam at ullam aliquam. Suscipit dicta eum doloribus sit blanditiis minus.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}

