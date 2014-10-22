require 'spec_helper'

describe 'managing deployment targets' do
  context 'as a user' do
    it 'can view a list of deployment targets' do
      visit '/deployment_targets'

      expect(page).to have_content 'Remote Deployment Targets'
      expect(page).to have_content 'Socialize staging environment'
      expect(page).to have_content 'Endpoint: https://foo.host'
      expect(page).to have_content 'Target Token aHR0cHM6Ly8xMC4wLjEuODozMDAxfGEyNjNkNWEyLTVkNDUtNGUxNy1iNDQ3LTQ2MGM3YzcwODIy'
    end
  end
end
