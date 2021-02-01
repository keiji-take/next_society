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
| occupation_id                   |integer | null: false |

### Association
- has_many :tweets
- has_many :rooms



## tweetsテーブル
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
| name                            | string | null: false |
| tel_number                      | string | null: false |

### Association
- has_many :rooms



## messagesテーブル
|    column                       |  type  |    options  |
| ------------------------------- | ------ | ----------- |
| content                         | text   | null: false |
| room                            |references|null: false, foreign_key: true|
| is_user                         |boolean |             |

### Association
- belongs_to :room



## roomsテーブル
|    column                       |  type  |    options  |
| ------------------------------- | ------ | ----------- |
| user                            |references|null: false, foreign_key: true|
| company                         |references|null: false, foreign_key: true|

### Association
- has_many :messages
- belongs_to :user
- belongs_to :company
 