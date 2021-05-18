# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |

### Association

- has_many :posts
- has_many :comments

## prototypes テーブル

| Column | Type          | Options     |
| ------ | --------------| ----------- |
| title  | string        | null: false |
| catch  | text          | null: false |
| concept| text          | null: false |
| user   | references    | 

### Association

- belongs_to :users
- has_many :comments 

## comments テーブル

| Column   | Type       | Options                        |
| ---------| ---------- | ------------------------------ |
| comment  | text       | null: false, foreign_key: true |
| user     | references | 
| post     | references |

### Association

- belongs_to :users
- belongs_to :posts

## likes table

| Column   | Type       | Options                        |
| ---------| ---------- | ------------------------------ |
| post     | references |                                |
| user     | references | 

## Association

- belongs_to :users
- belongs_to :posts 

## chat_room_users
|chat_room    |references|null: false, foreign_key: true|
|user         |references|null: false, foreign_key: true|

### Association
- belongs_to :room
- belongs_to :user

## chat_rooms
|user          |references|null: false, foreign                           |

### Association
has_many :chat_room_users
has_many :chats, through: :chat-users

