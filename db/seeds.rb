# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Registrant.destroy_all
User.destroy_all

Registrant.create([

    {
		id: SecureRandom.urlsafe_base64,
		email: "bugs.bunny@gmail.com",
		expires_at: Time.now + 4.hours
	},

	{
		id: SecureRandom.urlsafe_base64,
		email: "donald.duck@gmail.com",
		expires_at: Time.now + 4.hours
	},

	{
		id: SecureRandom.urlsafe_base64,
		email: "minnie.mouse@gmail.com",
		expires_at: Time.now + 4.hours
	}

	])


User.create([

	{
	id: SecureRandom.urlsafe_base64,
	name: 'Bugs Bunny',
	email: "bugs.bunny@gmail.com",
	expires_at: Time.now + 4.hours,
	password: "123",
	password_confirmation: "123"
	},

	{
	id: SecureRandom.urlsafe_base64,
	name: 'Donald Duck',
	email: "donald.duck@gmail.com",
	expires_at: Time.now + 4.hours,
	password: "123",
	password_confirmation: "123"
	},

	{
	id: SecureRandom.urlsafe_base64,
	name: 'Minnie Mouse',
	email: "minnie.mouse@gmail.com",
	expires_at: Time.now + 4.hours,
	password: "123",
	password_confirmation: "123"
	}

	])