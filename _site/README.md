
# RubyTutorial

We are using Jupyter Notebooks to make this tutorial.
For those who don't know about Jupyter Notebooks, go [here](https://jupyter.org/). 
Below is a sample, about how notebooks work.

![alt text](https://raw.githubusercontent.com/CodingNinjasCodes/RubyTutorial/master/notebook_demo.gif "Without Smooth Scroll")

## Basics

### Data Types


```ruby
my_num = 15
my_string = "Tushar"
my_bool = true

puts my_num, my_string, my_bool
```

    15
    Tushar
    true


Ruby is a dynamically typed Language, as we see in the above code, we assigned a number, a string value and a boolean to three different variables

'puts' is a function that takes a list of arguements and prints to console on a new line, You may use print statement as well, the only difference is, it prints in continuation. 


```ruby
print my_num, my_string, my_bool 
```

    15Tushartrue

my_num, my_string and my_bool are variables which are holding different objects. For naming variables in ruby we use snakecase as a convention. 

Everything is a an Object in Ruby,

Everything!

To find out class of a ruby object we can call a 'class' method on any object.


```ruby
puts my_num.class() , my_string.class() , my_bool.class()
```

    Fixnum
    String
    TrueClass


## Arithmetic


Basic Arithmetic operators are '+','-','*','/' and '%'.


```ruby
five = 5
two = 2
seven = 5 + 2

```




    7




```ruby
ten = five * two
```




    10




```ruby
one = five % two
```




    1




```ruby
two = five / two
```




    2




```ruby
three = five - two

```




    3



## Strings


```ruby
my_string = "Programming in Ruby Is Fun."
```




    "Programming in Ruby Is Fun."




```ruby
my_string.length()
```




    27




```ruby
my_string.reverse()
```




    ".nuF sI ybuR ni gnimmargorP"




```ruby
puts my_string
```

    Programming in Ruby Is Fun.



```ruby
my_string.reverse!()
```




    ".nuF sI ybuR ni gnimmargorP"




```ruby
puts my_string
```

    .nuF sI ybuR ni gnimmargorP



```ruby
my_string = "Programming in Ruby Is Fun."
my_string.split(" ")
```




    ["Programming", "in", "Ruby", "Is", "Fun."]




```ruby
words = my_string.split(" ")
puts words #Gives an array, we'll come to it
```

    ["Programming", "in", "Ruby", "Is", "Fun."]



```ruby
word = "Programming"
```




    "Programming"




```ruby
word.downcase() #Get a word with lower case letters
```




    "programming"




```ruby
word.upcase() # get a word with upper case letters
```




    "PROGRAMMING"




```ruby
#This is a single line comment
puts "comment" #this can come at the end of any expression
=begin
This is a multiline comment.
=begin should start at the first character of the line to be it a comment, other wise it wont work

=end
```

    comment


## Naming Conventions

For methods and variables we follow snake case like example_variable, example_function.
For Classes we follow upper case letters, MyOwnClass.
For functions which are risky to use, like reverse!, we add exclamation mark at the end.

## Function Chaining



```ruby
my_string = "tushar tuteja"
```




    "tushar tuteja"




```ruby
my_string.reverse().upcase() # You can chain function calls one after the other
```




    "AJETUT RAHSUT"



## String Formatter


```ruby
my_name = "Tushar Tuteja"
my_city = "Delhi"
puts "Hi, I am #{my_name}, I belong to #{my_city}." #way to format complex strings.
```

    Hi, I am Tushar Tuteja, I belong to Delhi


## Control Flow


```ruby
if true
  puts "true"
else
  puts "false"
end

```

    true



```ruby
false == "false" # this is false
```




    false




```ruby
false == nil # this is false
```




    false




```ruby
my_object = nil
```


```ruby
my_object == nil
```




    true




```ruby
my_object.nil? # this is the way to check nil
```




    true



Ruby has infinite true expressions, only two false expressions, one is false and the other is nil. So 0 would evaluate to true, this is different form C and C++ language.


```ruby
if my_object
  puts "true"
else
  puts "nil or false"
end

```

    nil or false



```ruby
my_object = 0
if my_object
  puts "this evaluates to true"
else
  puts "should have been false if we were coding in C."
end

```

    this evaluates to true



```ruby
first_condition = false
second_condition = true

if first_condition
  puts "first condition is true"
elsif second_condition
  puts "second condition is true"
elsif 0 > 3
  puts "won't happen"
end

```

    second condition is true



```ruby
hungry = true
```




    true




```ruby
if not hungry 
  puts "keep working"
else
  puts "eat"
end
```

    eat


Ruby gives us more than if else, it gives us unless else, which is more verbose than if not. Example


```ruby
unless hungry
  puts "keep working"
else
  puts "Eat"
end

```

    Eat


### Conditional Operators : == , >= ,<= ,!=, !



```ruby
5 == '5'
```




    false




```ruby
5*4 == 4*5
```




    true




```ruby
4 < 7
```




    true




```ruby
8 > 9

```




    false




```ruby
"tushar" > "tuteja"
```




    false




```ruby
5 >= 5
```




    true




```ruby
4 != 5
```




    true




```ruby
!true
```




    false



### Composite Conditional Statements


```ruby
work_done = true
if work_done || hungry
  puts "eat"
else
  puts "work"
end
```

    eat



```ruby
puts false || true
puts true || false
puts true && true
puts true && false
puts false || false
```

    true
    true
    true
    false
    false



```ruby
if not false
  puts "it is true"
else
  puts "it is false"
end

```

    it is true


## Loops


```ruby
i = 0 
while i < 5 
  puts "ruby is fun"
  i = i + 1
end

```

    ruby is fun
    ruby is fun
    ruby is fun
    ruby is fun
    ruby is fun



```ruby
i = 5
while  i != 0
  puts "ruby is more verbose"
  i = i - 1
end
```

    ruby is more verbose
    ruby is more verbose
    ruby is more verbose
    ruby is more verbose
    ruby is more verbose



```ruby
i = 5
until i == 0
  puts "ruby is more verbose"
  i = i - 1
end

```

    ruby is more verbose
    ruby is more verbose
    ruby is more verbose
    ruby is more verbose
    ruby is more verbose



```ruby
for i in 1..5
  puts "ruby has many ways to do the same thing."
end
```

    ruby has many ways to do the same thing.
    ruby has many ways to do the same thing.
    ruby has many ways to do the same thing.
    ruby has many ways to do the same thing.
    ruby has many ways to do the same thing.





    1..5




```ruby
for i in 1...5
  puts "..(two dots) inclues 1 and 5 both, where as ...(three dots) doesn't include 5"
end
```

    ..(two dots) inclues 1 and 5 both, where as ...(three dots) doesn't include 5
    ..(two dots) inclues 1 and 5 both, where as ...(three dots) doesn't include 5
    ..(two dots) inclues 1 and 5 both, where as ...(three dots) doesn't include 5
    ..(two dots) inclues 1 and 5 both, where as ...(three dots) doesn't include 5





    1...5




```ruby
5.times do 
  puts "this needs to be done 5 times"
end
```

    this needs to be done 5 times
    this needs to be done 5 times
    this needs to be done 5 times
    this needs to be done 5 times
    this needs to be done 5 times





    5




```ruby
my_string = "Ruby is made for productivity."
words = my_string.split(" ")
words.each do |word| #would discuss more of this in arrays and hashes
  puts word.capitalize # This would capitalize every word
end
```

    Ruby
    Is
    Made
    For
    Productivity.





    ["Ruby", "is", "made", "for", "productivity."]



## Arrays


```ruby
a = [] # this creates an empty array
```




    []



Arrays are lists in ruby, means they doesn't need to be homegenous.


```ruby
a = ["tushar", 5, [4,5,6]]
```




    ["tushar", 5, [4, 5, 6]]



Arrays are continuous data structures



```ruby
a = []
a[45] = 5
puts a
```

    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 5]


a[45] = 0, created 45 empty spaces and then added 5 at 45th index. Indexing starts from zero.


```ruby
puts a[45]
```

    5



```ruby
puts a[0] # Would print nothing
```

    



```ruby
puts a.length
```

    46


## Hashes

Hashes are smilar to javascript dictionaries, the only difference is that they are ordered. 


```ruby
my_hash = {} # creates a new Hash

```




    {}




```ruby
my_hash = Hash.new # creates a new Hash
```




    {}




```ruby
my_hash = {:name => "Tushar", :city => "Delhi"} # Creates a hash 
```




    {:name=>"Tushar", :city=>"Delhi"}




```ruby
my_hash[:name] # to access :name from my_hash
```




    "Tushar"



:name and :city are actually symbols. they are used for faster accessing, we may use strings as well.



```ruby
my_hash = {"name" => "tushar"}
```




    {"name"=>"tushar"}




```ruby
puts my_hash["name"]
puts my_hash[:name] # This won't work, you need to remember that strings and symbols are different
```

    tushar
    



```ruby
my_hash = {:name => "Tushar", :city => "Delhi", :age => 25}
```




    {:name=>"Tushar", :city=>"Delhi", :age=>25}




```ruby
my_hash.each do |key| # iterating over the keys
  puts key
end

```

    [:name, "Tushar"]
    [:city, "Delhi"]
    [:age, 25]





    {:name=>"Tushar", :city=>"Delhi", :age=>25}



If you look at the above code, the keys are ordered.


```ruby
my_hash.each do |key,value|
  puts "#{key} : #{value}"
end
```

    name : Tushar
    city : Delhi
    age : 25





    {:name=>"Tushar", :city=>"Delhi", :age=>25}



## Methods



```ruby
def my_method
  puts "hello method"
end

```




    :my_method




```ruby
my_method()
```

    hello method



```ruby
my_method # parenthesis are optional in ruby, it makes the code more verbose 
```

    hello method



```ruby
def is_odd number # parenthesis are optional
  return number % 2 == 1
end

is_odd 1 # parenthesis are optional
```




    true




```ruby
def is_even number
  number % 2 == 0 #last expression in every function is a return statement by default.
end

```




    :is_even




```ruby
is_even 2
```




    true




```ruby
def join_words words_array
  result = ""
  words_array.each do |word|
    result = result + word + " " # String concatenation
  end
  result
end

puts join_words ["Ruby","is","flexible"]
```

    Ruby is flexible 


What is you want to pass a variable number of arguments and you don't want to pass an array.

Voila, we have *args arguement.


```ruby
def join_words *args
  result = ""
  args.each do |word|
    result = result + word + " " # String concatenation
  end
  result
end

puts join_words "Ruby","is","flexible" # This code is more verbose
puts join_words "Ruby","is","flexible",",", "This", "code" ,"is" ,"more" ,"verbose"

```

    Ruby is flexible 
    Ruby is flexible , This code is more verbose 

Some more content