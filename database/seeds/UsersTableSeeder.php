<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		// DB::table('users')->truncate();
		User::truncate();

		$usersQuantity = 99;

		User::create([
			'name' => 'Rodrigo Cabral',
			'email' => 'rodrigo.cabral@ti.com',
			'email_verified_at' => now(),
			'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
			// 'password' => Hash::make('password'), // password
			'remember_token' => Str::random(10),
		]);

		// factory(User::class, $usersQuantity)->create()->each(function ($u) {
		// 	$u->save();
		// });
		factory(User::class, $usersQuantity)->create();

	}
}
