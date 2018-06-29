def put_recipes(params)
  @params = params
  @recipes={
  :chinese => {:easy=>{
    :fried_rice=>{
               :title=>"Fried Rice",
              :link=>"http://www.geniuskitchen.com/recipe/chinese-fried-rice-38748",
              :picture=>"https://img.sndimg.com/food/image/upload/w_707,h_398,c_fill,fl_progressive,q_80/v1/img/recipes/38/74/8",
              :content=>"This is the best fried rice"},
      :pancakes=>{
              :title=>"Fried Pancakes",
              :link=>"https://www.allrecipes.com/recipe/214564/pan-fried-chinese-pancakes/?internalSource=staff%20pick&referringId=695&referringContentType=recipe%20hub",
              :picture=>"http://www.the350degreeoven.com/wp-content/uploads/2013/03/DSC_0202fix.jpg",
              :content=>"These are pancakes"},
        }
     }
  }
   # :gluten_free => "Here is the gluten-free recipe"


  # recipes=[]
  #.each do |key, val|
  #   recipes.push(val)
  # end
  #   return recipes
end