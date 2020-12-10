# テーブル設計


## usersテーブル
|    column                       |  type  |    options  |
| ------------------------------- | ------ | ----------- |
| name                            | string | null: false |
| email                           | string | null: false |
| encrypted_password              | string | null: false |
| birth_date                      | date   | null: false |
| gender                          |integer | null: false |
| location                        |integer | null: false |
| tel_number                      | string | null: false |
| profile                         | text   | null: false |
| occupation                      |integer | null: false |

### Association
- has_many :nexts
- has_many :rooms
- has_many :chats



## nextsテーブル
|    column             |  type   |   options   |
| --------------------- | ------  | ----------- |
| title                 | string  | null: false |
| boast                 | text    | null: false |
| occupation_id         | integer | null: false |
| user                  |references|null: false, foreign_key: true|

### Association
- belongs_to :user



## companiesテーブル
|    column                       |  type  |    options  |
| ------------------------------- | ------ | ----------- |
| company_name                    | string | null: false |
| email                           | string | null: false |
| encrypted_password              | string | null: false |
| vision                          | string | null: false |
| ideal                           |integer | null: false |
| location                        |integer | null: false |
| business_content                | text   | null: false |
| job_description                 | text   | null: false |
| welfare                         | text   | null: false |

### Association
- has_many :chats
- has_many :rooms



## chatsテーブル
|    column                       |  type  |    options  |
| ------------------------------- | ------ | ----------- |
| message                         | string | null: false |
| user                            |references|null: false, foreign_key: true|
| company                         |references|null: false, foreign_key: true|
| room                            |references|null: false, foreign_key: true|

### Association
- belongs_to :company
- belongs_to :user
- belongs_to :room



## roomsテーブル
|    column                       |  type  |    options  |
| ------------------------------- | ------ | ----------- |
| room_name                       | string | null: false |

### Association
- has_many :chats
- has_many :users
- has_many :companies
- has_many :room_users



## room_usersテーブル
|    column                       |  type  |    options  |
| ------------------------------- | ------ | ----------- |
| user                            |references|null: false, foreign_key: true|
| company                         |references|null: false, foreign_key: true|
| room                            |references|null: false, foreign_key: true|

### Association
- belongs_to :company
- belongs_to :user
- belongs_to :room