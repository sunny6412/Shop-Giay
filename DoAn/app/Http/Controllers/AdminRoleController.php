<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Role;
use Illuminate\Http\Request;

class AdminRoleController extends Controller
{
    private $role;
    private $permission;
    public function __construct(Role $role, Permission $permission)
    {
        $this->role = $role;
        $this->permission = $permission;
    }
    public function index(){
        $roles = $this->role->paginate(10);
        return view('admin.role.index',compact('roles'));
    }

    public function create(){
        $permissions = $this->permission->where('parent_id',0)->get();
        return view('admin.role.add',compact('permissions'));
    }

    public function store(Request $request){
        $role =$this->role->create([
            'name' => $request->name,
            'display_name' => $request->display_name
        ]);
        $role->permissions()->attach($request->permission_id);

        return redirect()->route('roles.index');
    }

    public function edit($id){
        $permissions = $this->permission->where('parent_id',0)->get();
        $role = $this->role->find($id);
        $permissionsChecked = $role->permissions;
        return view('admin.role.edit',compact('permissions','role','permissionsChecked'));
    }

    public function update(Request $request, $id){
        $role = $this->role->find($id);
        $role->find($id)->update([
            'name' => $request->name,
            'display_name' => $request->display_name
        ]);
       
        $role->permissions()->sync($request->permission_id);
        return redirect()->route('roles.index');
    }

    
}
