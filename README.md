# **README**

This is a Project I did for the Odin Project. It's a very small Rails application which allows you to add Users, Posts and Comments to a database. It doesn't have a frontend, so you have to run it in the rails console if you want to add new entries.

You can use basic Ruby and Rails methods:

``` ruby
user = User.new(username: "Handsome", password:"sixchars")
u.save

post = Post.new(title: "On the inherent Martiality of the tortoise", link:"www.timevampire.com/article/batshit_tortoise_article", user: user)
post.save

comment = Comment.new(body: "Definitely made me re-think my relationship towards my late grandmother's pet turtle. Give this one a read...", user: user, post: post)
comment.save

puts Post.first.comments
```

The different tables and their associations are set up as follows:   
## **User**

**username**:string [present, unique, 4-12 chars]  
**password**_string [present, 6-20 chars]  

**has_many** posts  
**has_many** comments

## **Post**

**title**:string [present]  
**link**:string [present]  
**user_id**:integer [present]  

**has_many** comments  
**belongs_to** user

## **Comment**

**body**:text[present]  
**user_id**:integer [present]  
**post_id**:integer [present]

**belongs_to** post  
**belongs_to** user