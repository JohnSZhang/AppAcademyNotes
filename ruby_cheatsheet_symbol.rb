:Symbol

1. What Is It?

* Immutable # State cannot change after creation

* String-Like # Used mostly for names, but cannot use most string methods

superman = { :first_name  => "Clark", :last_name => "Kent", :favorite_thing  => "Singing in the shower" }

# Often used for hash keys

2. Hash With Symbol Keys

* Hashes Are Often Used As Method Arguments As They Are Position Independent

# pizza_create({:topping  => "sausage", :sauce  => true, :bread  => "wheat"})

* Because Of This We Can Shortcut It

# pizza_create(topping: "mushrooms", sauce: false, bread: "whitest") Notice skipping both the {} and the  => 

* Ruby Even Collects Last Bunch Of Hashes And Convert Them Into Hash As Optional Argument

# pizza_buy(quantity, price, topping: "ham & pineapple", cheese: "goat")