possible_cats = %w[Furniture Apartments Love\ Connections Intimate\ Encounters]

possible_cats.each do |cat|
  Category.create!(:title => cat)
end

Post.create!(:title => 'The handsome guy at the beach', 
             :text => "I saw you this weekend at the beach, and it was totes love!! Message me if you were wearing a red shirt ;)",
             :price => 0,
             :email => 'cutegrl07@gmail.com',
             :category_id => 3)

Post.create!(:title => 'Yolo gurl', 
             :text => "I saw you this weekend at the beach, and it was totes love!! Message me if you were wearing a red shirt ;)",
             :price => 0,
             :email => 'cutegrl07@gmail.com',
             :category_id => 3)

Post.create!(:title => 'Cool desk', 
             :text => "I saw you this weekend at the beach, and it was totes love!! Message me if you were wearing a red shirt ;)",
             :price => 0,
             :email => 'cutegrl07@gmail.com',
             :category_id => 1)

Post.create!(:title => '$1000/month 3 br', 
             :text => "I saw you this weekend at the beach, and it was totes love!! Message me if you were wearing a red shirt ;)",
             :price => 1000,
             :email => 'cutegrl07@gmail.com',
             :category_id => 2)

Post.create!(:title => '18+ only', 
             :text => "I saw you this weekend at the beach, and it was totes love!! Message me if you were wearing a red shirt ;)",
             :price => 0,
             :email => 'cutegrl07@gmail.com',
             :category_id => 4)

Post.create!(:title => 'Cool bed', 
             :text => "I saw you this weekend at the beach, and it was totes love!! Message me if you were wearing a red shirt ;)",
             :price => 0,
             :email => 'cutegrl07@gmail.com',
             :category_id => 1)

Post.create!(:title => '$50,000/mo. in downtown Oakland', 
             :text => "I saw you this weekend at the beach, and it was totes love!! Message me if you were wearing a red shirt ;)",
             :price => 50000,
             :email => 'cutegrl07@gmail.com',
             :category_id => 2)
