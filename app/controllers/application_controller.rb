class ApplicationController < ActionController::Base

def compare_user(session_id, user_id)
if session_id == user_id
return true
else
return false
end
end
