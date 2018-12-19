## Setup

Ruby version that will be used in this code challenge is Ruby `2.5.1` along with `Rails 5`.

Code challenge should take one hour.

## General requirements and comments
The functionality that you will be creating in this code challenge is managing shops under categories to create a local business directory.

The initial models Category and Shop are already present in the app.

### Time limit

**Time limit for the code challenge is one hour**. Try to do the test within that time-frame, and implement only the most important things
to make the functionality work within that time-frame. No need to over do it, as there is no need for it. Keep the amount of the code produced within that one hour.

The main goal of the code challenge is to see the quality of the code and its correctness.

### Sending the code

**After the code challenge is completed** zip all the folders that are relevant like `app`, `db` etc. folders (except `.git`, `vendor`, `.bundle`, `log` etc.) and send the `zip` file named like `your-name-init-code.zip` to e-mail: richa@upstack.co, and put a subject "**Initial code challange**" (so I could easier filter-out the emails)

Send link to your GitHub account in the content of the e-mail as well.


## Code Challenge:
The goal of the code challenge is to extend the existing app with a possibility to manage and filter the shops by name or category via RESTful APIs.


- Shop details should be saved and managed (CRUD operations) using REST routes

- Shops should be listed ordered by name by default

- Shops list should be filtered by name or category name if params[:filter] is provided to 'shops#index'

- Address should be also be saved when a shop is saved via api

- Unit tests should be present for Shop model

- Good to have : Co-ordinates should be saved automatically for the shop on the basis of shop address

**Copyright:**

This document is confidential and property of Upstack and shouldn't be shared with anyone
