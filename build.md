# PAGES
  $ rails g scaffold page title body:text slug

# CATEGORIES
  $ rails g scaffold category name
  ## Integrate category with pages
    $ rails g migration add_category_to_pages category:references