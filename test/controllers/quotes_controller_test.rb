require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
   test "quote show page" do
     quote = Quote.create(:author => 'Slim Shady', :saying => 'I came to save these new generations of babies//From parents who failed to raise them \'cause they\'re lazy')
     get :show, :id => quote.id
     assert_response :success
 end

 test "quote show page, not found" do
 	get :show, :id => 'OMG'
 	assert_response :not_found
   end
end
