require 'php_session/rails.rb'

describe ActionDispatch::Session do
  it "load PhpStore" do
    expect(ActionDispatch::Session.const_get(:PhpStore)).not_to be_nil
  end
end
