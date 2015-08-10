# NOTICE:

This gem is based on the original Shoppe gem but contains additional features for managing colors and sizes in your database.  In order to active colors and sizes you must add them into your views and update your buy method.  Please see the repo https://github.com/ikhakoo/ap or visit the demo site: https://ap-uniforms.herokuapp.com 

An additional field called "sell_item?" controls what is viewable in the store.

By adding a version of this code to your view, you will be able to determine if the item will display or not:

<% if @product.sell_item? %> { true }

Or in your controller:

def index
	@products = Shoppe::Product.where(sell_item: true)
end

All items default to true when created and unchecking the box on /shoppe/products/:product_id/edit page will remove it from your store front assuming you use the code above.

Order Item has 2 new fields "color" and "size" to accomodate the values passed through the buy method to add to cart.

This also allows the user to update per color or size.

The only drawback is that the seller is unable to track inventory on a per item/per color basis but the positive is that it allows you to have multiple variants without having to create new records in your database to store those individual variants.

# WARNING

If you do not require colors or sizes and prefer to use variants I suggest using the shoppe gem from the main repo. If you require assistance with this gem please contact me.


# Shoppe

Shoppe is an Rails-based e-commerce platform which allows you to easily introduce a
catalogue-based store into your Rails 4 applications. 

![GemVersion](https://badge.fury.io/rb/shoppe.png)
[![Code Climate](https://codeclimate.com/github/tryshoppe/core/badges/gpa.svg)](https://codeclimate.com/github/tryshoppe/core)
[![Build Status](https://travis-ci.org/tryshoppe/shoppe.svg?branch=master)](https://travis-ci.org/tryshoppe/shoppe)

* [Check out the website](http://tryshoppe.com)
* [View the demo site](http://demo.tryshoppe.com)
* [Check out the demo site source](http://github.com/tryshoppe/example-store)
* [Read the release notes](https://github.com/tryshoppe/core/blob/master/CHANGELOG.md)
* [Read API documentation](http://api.tryshoppe.com)

## Features

* An attractive & easy to use admin interface with integrated authentication
* Full product/catalogue management
* Stock control
* Tax management
* Flexible & customisable order flow
* Delivery/shipping control, management & weight-based calculation

## Getting Started

Shoppe provides the core framework for the store and you're responsible for creating
the storefront which your customers will use to purchase products. In addition to
creating the UI for the frontend, you are also responsible for integrating with whatever
payment gateway takes your fancy.

### Installing into a new Rails application

To get up and running with Shoppe in a new Rails application is simple. Just follow the
instructions below and you'll be up and running in minutes.

    rails new my_store
    cd my_store
    echo "gem 'shoppe', '~> 1.0'" >> Gemfile
    bundle
    rails generate shoppe:setup
    rails generate nifty:attachments:migration
    rails generate nifty:key_value_store:migration
    rake db:migrate shoppe:setup
    rails server

## Contribution

If you'd like to help with this project, please get in touch with me. The best place is on
Twitter (@adamcooke) or by e-mail to adam@atechmedia.com.

## License

Shoppe is licenced under the MIT license. Full details can be found in the MIT-LICENSE
file in the root of the repository.
# shoppe-1.0.5-ap
