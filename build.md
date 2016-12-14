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