class PagesController < ApplicationController
  def landing
    def index
      if request.subdomain.present?
        current_account = Account.find_by_subdomain(request.subdomain)
      else
        current_account = current_user.account
      end
  
      @todos = Todo.where(account_id: current_account.id)
    end
  end
end
