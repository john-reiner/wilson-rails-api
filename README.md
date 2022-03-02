# Wilson

This is the API for the Wilson application. Built in Rails as an API only

A User should be able to login and create a new Goal. A User should be able to assign other users to a Goal. A Goal should be able to have many Notes posted by a User. A User can create a List for the Goal with many Tasks. A User can create Tags and Tag Notes, Lists and Tasks with Tags that are scoped within the Goal. A Goal has many Comments posted by Users.

 - User(username, password, first_name, last_name)
    - Has many Goals
    - Has many friends
- Goal(name, due_date)
    - Has many Notes
    - Has many Lists
    - Has an optional due date
    - Has many Users
    - Has many Tags
    - Has many Comments
- Note(content, goal_id)
    - Belongs to a User
    - Belongs to a Goal
    - Has many Tags
- List(name, goal_id)
    - Belongs to a Goal
    - Belongs to a User
    - Has many Tasks
    - Has many Tags
- Task(content, due_date, list_id)
    - Belongs to a User
    - Belongs to a List
    - Has many Tags
- Tag(content)
    - Belongs to a Goal
    - Belongs to a Note
    - Belongs to a List
    - Belongs to a Task
- Comment(content, user_id, goal_id)
    - Belongs to a Goal
    - Belong to a User
