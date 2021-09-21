puts "Loading ThecoreDataentryCommons seeds"
Thecore::Seed.save_setting :main, :datawedge_kp_mode , "keypress"
# ws: WebSocket
# kp: KeyPress
Thecore::Seed.save_setting :main, :datawedge_scan_mode , "auto" # or "kp"
