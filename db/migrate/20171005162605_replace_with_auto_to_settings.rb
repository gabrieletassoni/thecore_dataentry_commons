class ReplaceWithAutoToSettings < ActiveRecord::Migration[5.1]
  def change
    # ws: WebSocket
    # kp: KeyPress
    Settings.datawedge_scan_mode = "auto" # or "kp"
  end
end
