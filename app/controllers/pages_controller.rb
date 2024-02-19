class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["bob", "arnold", "fred", "herman", "bob the 2nd"]

    # 1. get user input in form, put it in variable
    search = params[:member]
    # 2. make conditional: if there's a search, then... (otherwise show normal default page)
    if search
      # 3. make a smaller new members array based on the user input; give only array item that starts with search
      @members = @members.select do |member|
        member.start_with? search.downcase
      end
    end
  end
end
