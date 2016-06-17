class Label < ActiveRecord::Base



private
  def lebel_params
    params.require(:lebel).permit(:id,:email,:refresh_token,:expires_at,:token)
  end
end
