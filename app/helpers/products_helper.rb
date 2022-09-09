module ProductsHelper
def current_user?(user)
  current_user && current_user == user
end

end
