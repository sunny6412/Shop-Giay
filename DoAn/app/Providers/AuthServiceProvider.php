<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('category-list', function (User $user) {
           return $user->checkPermissionAccess(config('permissions.access.list-category'));
        });

        Gate::define('category-add', function (User $user) {
            return $user->checkPermissionAccess(config('permissions.access.add-category'));
         });

         Gate::define('category-edit', function (User $user) {
            return $user->checkPermissionAccess(config('permissions.access.edit-category'));
         });

        Gate::define('menu-list', function (User $user) {
            return $user->checkPermissionAccess(config('permissions.access.list-menu'));
         });
    }
}
