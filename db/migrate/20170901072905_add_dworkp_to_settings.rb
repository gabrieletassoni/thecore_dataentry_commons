class AddDworkpToSettings < ActiveRecord::Migration[5.1]
  def change
    # ws: WebSocket
    # kp: KeyPress
    Settings.datawedge_scan_mode = "kp" # or "kp"
  end
end
