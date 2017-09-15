class AddKeymodeToSettings < ActiveRecord::Migration[5.1]
  def change
    # ws: WebSocket
    # kp: KeyPress
    Settings.datawedge_kp_mode = "keypress" # or "kp"
  end
end
