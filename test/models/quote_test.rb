require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
   
   test "unique_tag" do
   	quote = Quote.create(:author => 'Slim Shady', :saying => 'I came to save these new generations of babies//From parents who failed to raise them \'cause they\'re lazy')
   	expected = 'SS#' + quote.id.to_s
   	actual = quote.unique_tag
   	assert_equal expected, actual
   end

end
