#Process

##Backend
- Create User Model
  - name, email, phone-number, insurance-co, insurance#
- Create User Table Migration
- Create Address Model (nested under user)
  - street address, town, state, zipcode
- Create CC# Model (nested under user)
  - name, cc# (use bcrypt password digest for this?), zip, expiry date, ccv
- Create User API Routes
- Create User Controller
- Create Serializer for User

- Create Dr Model
  - Name, Img


##Prep Client
- Add Package Manager (bower)
- Add angular and angular-ui-router and angular rails templates
- Add to asset pipeline

##FrontEnd
- Create root page with list of Waiting List Patients
- Add a nested route for creating a user
- Add a nested route for showing user details
- Add a nested route for editing user details
- Create a user factory (with JS Factory) to connect to the backend API
- Add a method to delete a user once called
