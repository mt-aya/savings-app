# テーブル設計

## usersテーブル

| Column             | Type   | Option      |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :categories
- has_many :plans
- has_many :expenses

## categoriesテーブル

| Column   | Type       | Option                         |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| user     | references | foreign_key: true, null: false |

### Association

- has_many :plans
- has_many :expenses
- belongs_to :user

## plansテーブル

| Column   | Type       | Option                         |
| -------- | ---------- | ------------------------------ |
| cost     | integer    | null: false                    |
| user     | references | foreign_key: true, null: false |
| category | references | foreign_key: true, null: false |

### Association

- belongs_to :category
- belongs_to :user

## expensesテーブル

| Column   | Type       | Option                         |
| -------- | ---------- | ------------------------------ |
| cost     | integer    | null: false                    |
| memo     | string     |                                |
| date     | date       | null: false                    |
| user     | references | foreign_key: true, null: false |
| category | references | foreign_key: true, null: false |

### Association

- belongs_to :category
- belongs_to :user
