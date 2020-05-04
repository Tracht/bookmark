# Bookmark Manager Challenge

## Step 1
- Write user story based on requirements
- Start with first requirement: show a list of bookmarks
- User story:
As a user
I want to see a list of bookmarks
So that I can decide which bookmark to visit
- Domain modelling:
Object: bookmark
Message: view_all_bookmarks

## Step 2
- Created homepage and bookmark routes in boomark.rb
- Hardcoded bookmarks in an array
- Created/passed feature/spec tests

## Step 3
Context: move hard-coded bookmarks into a database
How to setup the database from scratch:
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using these commands:
psql
\c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
