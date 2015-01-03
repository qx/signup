require 'spec_helper'

describe 'UserPages' do
  subject { page }
  describe 'User  Signup' do
    before {visit signup_path}
    it{ should have_title('Signup')}
  end
end
