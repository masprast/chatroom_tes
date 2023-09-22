class PesanController < ApplicationController
  def create
    @current_user = current_user
    @pesan = @current_user.pesans.create(content: p_param[:content], room_id: params[:room_id])
  end
private
  def p_param
    params.require(:pesan).permit(:content)
  end
end
