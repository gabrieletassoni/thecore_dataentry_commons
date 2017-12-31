class AddKeymodeToSettings < ActiveRecord::Migration[5.1]
  def change
    # keyup
    # keypress
    Settings.datawedge_kp_mode = "keypress"
  end
end
