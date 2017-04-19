# GoalSetter
Sample app for learning purpose
...........................................

Features
User authentication
User can register to their account
Forgot/Reset password
Login to system
Dashboard
Show number of Goal 
Show number of completed goals
Goal
Create new goal
Edit/Update goal
While setting goal, I should be able to ser multiple milestome
Display percentage of completed goal based on completed milestone
Only creator can view the goal
Delete goal
Note to goal
I should be able to add note to goal
With attachment
System Admin (Admin User)
View list of users
View list of goals

Attributes
User
Full Name
Email    
Password
Password confirmation
Goal
Title
Description
Expected completion date
User_id
Milestone
Title
Status
Goal_id
Note:
Title
Attachment
Goal_id

Database Relation
User and Goal
User has many goals
Goal belongs to User
Goal and Milestone
Goal has many Milestone
Milestone belongs to Goal
Goal and Note
Goal has many Notes
Note belongs to Goal

Tasks:

Project setup
Create new project, database setup, database create, configure root url and home page
Install bootstrap gem and setup bootstrap

Devise setup
Add devise gem to Gemfile and Install.
Configure devise for User model

Goal Model
Generate goal model with above attributes
Define relationship between Goal and User
Define validation for required fields
Milestone Model
Generate Milestone model with above attributes
Define relationship between Goal and MIlestone
Define validation for required fields
Dashboard
Configure routes for dashboard
Generate Pages controller with dashboard action
Layout design for dashboard
Goal Controller
Generate goal controller with actions: index, new, create, edit, delete, update
Configure routes for goals (user resources)
In index page, list all goals created by me
Add Goal
Goal form
Add milestone while create goal
Create goal
Edit goal
Add milestone while create goal
Update goal
Delete goal
Show goal
Display goal attributes
Show % of goal completed
List goal milestone
There should be checkbox along with milestone, so that we can mark milestone as completed.
There should be a form at the bottom of the page to add note.
