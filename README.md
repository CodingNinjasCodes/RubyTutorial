
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



```ruby

```
