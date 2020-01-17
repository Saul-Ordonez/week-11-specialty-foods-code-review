# Week 10 Project (Specialty Foods Project)

#### Application lets users add products with additional information and write reviews for those products.

#### By **Saul Ordonez**

## Description

This Ruby on Rails web application takes in user input to save products and reviews in a one-to-many relationship. The form fields allow the user to add a cost and country of origin to the product, as well as have the ability to add multiple reviews from multiple people including details about the name of the author, a 1-5 rating system, and the content of the review itself.

## Specs
HTTP | Route | CRUD Functionality | Description
--- | --- | --- |---
GET | /products | READ | Gets a list of products
GET | /products/:id | READ | Looks at the details page for one product
POST | /products | CREATE | Adds a new product to the list of already saved products (if any)
PATCH | /products/:id | UPDATE | Updates a product
DELETE | /products/:id | DELETE | Deletes a product from the list
GET | /products/new | READ | Goes to the page to add a new product to the list
GET | /products/:id/edit | READ | Goes to the page to edit a product
GET | /products/:id/reviews/:review_id | READ | Looks at the details page for one review
POST | /products/:id/reviews/:review_id | CREATE | Adds a new review to the list of already saved reviews (if any)
PATCH | /products/:id/reviews/:review_id | UPDATE | Updates a review
DELETE | /products/:id/reviews/:review_id | DELETE | Deletes a review from the list

## Setup/Installation Requirements

* Clone GitHub project repository onto desktop
* You will need to have ruby and rails installed on your computer
* Run bundle in your terminal to install appropriate Ruby Gems
* Run $ rake db:migrate to add database for project
* Run $ **rails s** in your terminal to boot up the browser server. You will also need to navigate to localhost:3000 to run the project
* internet service required when cloning project repository onto local computer.

## Known Bugs

There are no known bugs at this time but may be subject to change.

## Support and contact details

If there are any issues or bugs the developer may not be aware of please contact at:

#### * sauleordonez@gmail.com
#### * (503)-382-9034

## Technologies Used

* Ruby
* Rails
* (A list of gems used can be found in the Gemfile)
* RSPEC and Shoulda-Matchers to spec test
* Mac Terminal to run project

### License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Copyright (c) 2020 **_Saul Ordonez_**
