# Intro to Rails

## SWBATs
* MVC
* Routing
* RESTful Routes
* Forms in Rails

### Deliverables
* Display a list of all pets
* Create new pets and edit existing pets
* Delete pets

#### Rails Routing

As you know, a "route" is a combination of **the path** that was requested and **the HTTP verb** that was used to request that path.

```text
                                          -----> Model <----> DB
                                         |         |
            response        request      |         |
   Browser <-------- router -------> controller <--
                             GET         ^
                             PUT         |
                             POST         -----> view <----> html/images/css/js
                             DELETE
```

### Generate a controller

As Rails is an MVC framework, we will need to have controllers to handle requests and call the database through models.

In Rails, the controllers are files inside the folder `app/controllers`. If you open this folder, you will see that one controller is already here: the file `application_controller.rb`. This controller does not directly handle HTTP requests, but rather serves as a link between all the controllers we will create, `application_controller.rb` will be the parent of all the controllers in our app.

There is 3 different ways for creating a controller in Rails:

1. We can manually create a file and write the ruby code inside it.
2. We can use a generator called `controller`, using `rails g controller CONTROLLER_NAME [ACTIONS]`. For instance, if we want to create a controller for the resource `pets` with an action and a view for `index` and `show`, we would type in the console `rails g controller pets index show`. This command would create a bunch of files and modify some others:
   * The controller itself, `pets_controller.rb` inside `app/controllers`
   * The views for each method , in this case
     * `app/views/index.html.erb`
     * `app/views/show.html.erb`
   * The routes handlers for these two actions will also be added to config/routes.rb :
     * `get '/pets/index', to: 'pets#index'`
     * `get '/pets/show', to: 'pets#show'`
3. We can use the `scaffold_controller` generator. This generator will create the same files as the previous generator but with a REST logic for views, controller and views.

#### Create methods for a RESTful controller

We've already defined what a RESTful resource is, let's see how to implement it in a rails app.

As a reminder, a RESTful resource will include 7 methods:

* Index
* Show
* New
* Create
* Edit
* Update
* Delete

Rails has a generator called `scaffold` that will create the whole MVC structure for a resource, let's say that inside the petstore app, we want the `Pet` resource to have a title and a content field, we would type:

```ruby
rails g scaffold Pet name:string animal:string
```

Running this command will generate a lot of files, including the controller, the views, the model, and the migration. It will also update the routes file.

Take a look at the controller, it has all the RESTful methods, and these methods already contain the code to query the database through the model `Pet`.

We don't want all the files created with the scaffold and in practice you won't actually use it so let's delete it

```ruby
  rails d scaffold Pet
```

Let's go ahead and generate a new Pets controller.

### Create views

There is no specific generator that will create only a view file, but you can add them manually into the appropriate folder inside views.

For instance, if we want to add a view file `about` for the resource `Pet`, we can create a file `about.html.erb` in `app/views/pets`.

If a view is "static" - as in, it doesn't use any instance variables created in the controller - you can just create a route for this view and rails will render it in the browser even if there is no method in the controller:

In config/routes.rb

```ruby
  get "/pets/about", to: 'pets#about'
```

If there is a file `about.html.erb` in `app/views/pets`, this file will be automatically rendered when you call `localhost:3000/pets/about`

#### Implicit vs Explicit Rendering

Thanks to Rails conventions, we do not need to specify the view file to render in our controller. This is known as implicit rendering

In app/controllers/pets

```ruby
  def index
  end
```

However, if we wanted to be more explicit or if we wanted to render a view template that does not correspond with the action name we could do the following:

```ruby
  def index
    render 'cats'
    # This will render cats.html.erb
  end
```

[Rails Guides](http://guides.rubyonrails.org/index.html)
