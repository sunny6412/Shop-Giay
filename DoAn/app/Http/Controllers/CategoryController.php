<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Components\Recusive;
use App\Models\Category;
use App\Models\product;
use Illuminate\Support\Facades\Log;

class CategoryController extends Controller
{
    private $category;
    private $product;
    public function __construct(Category $category,product $product)
    {
        $this->category = $category;
        $this->product = $product;
    }
    public function create()
    {
        $htmlOption = $this->getCategory($parentid = '');
        return view('admin.category.add', compact('htmlOption'));
    }

    public function index()
    {
        $categories = $this->category->latest()->paginate(5);
        return view('admin.category.index', compact('categories'));
    }

    public function store(Request $request)
    {
        $this->category->create([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => $request->name
        ]);
        return redirect()->route('categories.index');
    }

    public function edit($id)
    {
        $category = $this->category->find($id);
        $htmlOption = $this->getCategory($category->parent_id);
        return view('admin.category.edit', compact('category', 'htmlOption'));
    }


    public function getCategory($parentId)
    {
        $data = $this->category->all();
        $recusive = new Recusive($data);
        $htmlOption = $recusive->categoryRecusive($parentId);
        return $htmlOption;
    }


    public function update($id, Request $request)
    {
        $this->category->find($id)->update([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => $request->name
        ]);
        return redirect()->route('categories.index');
    }

    public function delete($id){
  
        try{
            $this->category->find($id)->delete();
            $this->product->where('category_id',$id)->delete();
            return response()->json([
                'code' => 200,
                'message' => 'Delete success'
            ],200);
        }catch(\Exception $exception){
            Log::error('Lỗi: ' . $exception->getMessage() . '---line ' . $exception->getLine());
            return response()->json([
                'code' => 500,
                'message' => 'Delete fail'
            ],500);
        }

        return redirect()->route('categories.index');
    }
}
