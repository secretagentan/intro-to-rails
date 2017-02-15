# Models

http://guides.rubyonrails.org/active_record_basics.html

- [x] What is Active Record?

  - the Rails ORM - the M in MVC - based on the active record pattern 
        which wraps database tables in classes
  - the layer of the system responsible for representing business data and logic
  - abstracts away accessing data directly from a database
      - instead of typing something like `SELECT * FROM users` 
              you can just write `Users.all` and Active Record will 
              return an array of the requested data
      - allows devs to write consistent ruby code and Active Record will fill 
          in the gaps depending on which database it's talking to 

- [x] What is an ORM?

  - ORM (Object Relational Mapping) - Technique that connect objects of an application to 
  tables (in a relational database management system).

  - Using ORM allows for storing and retrieving the properties and relationships of objects 
  in an application without writing direct SQL statements

  - sample code in an ORM (DataMapper)
  ```
    @post = Post.create(
      :title      => "My first DataMapper post",
      :body       => "A lot of text ...",
      :created_at => Time.now
    )

    @post = Post.new(:title => ..., ...)
    @post.save # persist the resource
  ```

- [x] What is the Rails naming convention for models?

  - Naming Conventions
      - Rails will pluralize class names to find the respective database table
          - i.e. books for class Book
      - Class names use CamelCase
      - Table names use snake_case
      - Rails pluralization mechanism very powerful
          - i.e. LineItem : line_items, Article : articles, Mouse : mice, Person : people
          
  - Schema Conventions
      - Foreign Keys: 
          - Singularized 'table_name_id'
          - i.e. item_id, order_id
      - Primary Keys: 
          - 'id' integer column by default
          
  - Overriding Naming Conventions
      - 'ActiveRecord::Base.table_name=' method
      ```
        class Product < ApplicationRecord
            self.table_name = "my_products"
        end
      ```
      
      - 'ActiveRecord::Base.primary_key=' method
      ```
        class Product < ApplicationRecord
            self.primary_key = "product_id"
        end
      ```

- [x] What are the CRUD operations in ActiveRecord?

  - Create
      - .new returns a new object
          - .save will commit the record to db
          ```
            m = Movie.new({title: "Batman", desc: "Batman")
            m.save
          ```
      - .create will create and save a new record to db
          ```
            Movie.new({title: "Batman", desc: "Batman")
          ```

  - Read
      - there are many methods used to query an Active Record model
      - (.all, .first, .find_by, .order, etc.)
      - http://guides.rubyonrails.org/active_record_querying.html

  - Update
      - you can do something like user.name then user.save
      - or you can use shorthand like user.update(name: 'Dave')
      - you can also update_all

  - Delete
      - .destroy
  

