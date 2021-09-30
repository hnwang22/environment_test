# location: spec/feature/integration_spec.rb
require 'rails_helper'
#integration test for book title attribute
RSpec.describe 'Creating a book', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Title', with: 'harry potter'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('harry potter')
	end
end

#=begin
#integration test for author attribute (string)
RSpec.describe 'Book with author', type: :feature do
	scenario 'valid inuputs' do
		visit new_book_path
		fill_in 'Author', with: 'Isaac Asimov'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('Isaac Asimov')
	end
end
#=end

#=begin
#integration test for price (number)
RSpec.describe 'Book with price', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Price', with: '12.99'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('12.99')
	end
end
#=end

#=begin
#integration test for published date (Date)
RSpec.describe 'Book with published date', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Published_date', with: '2000-08-15'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('2000-08-15')
	end
end
#=end
