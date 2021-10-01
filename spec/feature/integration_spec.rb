# location: spec/feature/integration_spec.rb
require 'rails_helper'
#integration test for book title attribute
RSpec.describe 'test valid book title', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'book_title', with: 'Foundation'
		fill_in 'book_author', with: 'Isaac Asimov'
		fill_in 'Price', with: '12.99'
		select '2020', :from => 'book_published_date_1i'
		select 'August', :from => 'book_published_date_2i'
		select '15', :from => 'book_published_date_3i'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('Foundation')
	end
end

#integration test for author attribute (string)
RSpec.describe 'test valid book author', type: :feature do
	scenario 'valid inuputs' do
		visit new_book_path
		fill_in 'book_title', with: 'Foundation'
		fill_in 'book_author', with: 'Isaac Asimov'
		fill_in 'Price', with: '12.99'
		select '2020', :from => 'book_published_date_1i'
		select 'August', :from => 'book_published_date_2i'
		select '15', :from => 'book_published_date_3i'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('Foundation')
	end
end

#integration test for price (number)
RSpec.describe 'test valid book price', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'book_title', with: 'Foundation'
		fill_in 'book_author', with: 'Isaac Asimov'
		fill_in 'Price', with: '12.99'
		select '2020', :from => 'book_published_date_1i'
		select 'August', :from => 'book_published_date_2i'
		select '15', :from => 'book_published_date_3i'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('$12.99')
	end
end

#integration test for published date (Date)
RSpec.describe 'test valid book published date', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'book_title', with: 'Foundation'
		fill_in 'book_author', with: 'Isaac Asimov'
		fill_in 'Price', with: '12.99'
		select '2020', :from => 'book_published_date_1i'
		select 'August', :from => 'book_published_date_2i'
		select '15', :from => 'book_published_date_3i'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('2020/08/15')
	end
end
