# PAGES
  $ rails g scaffold page title body:text slug

# CATEGORIES
  $ rails g scaffold category name
  ## Integrate category with pages
    $ rails g migration add_category_to_pages category:references

# Menus
  $ rails g model menu name
  $ rails g model menu_item title url menu:references
  $ rails g controller menus index new create update edit destroy

# Image Gallery
  $ rails g model type name
  $ rails g model field_definition type:references key
  $ rails g model field page:references field_definition:references value

  $ rails g controller types index new edit create update destroy

  $ rails g migration add_type_to_pages type:references