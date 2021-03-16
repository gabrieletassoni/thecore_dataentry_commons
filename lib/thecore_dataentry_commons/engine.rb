module ThecoreDataentryCommons
  class Engine < ::Rails::Engine
    # This code makes the static assets present in this 
    # engine available to main app, even if this gem is 
    # just a dependency of another engine
    # initializer 'thecore_dataentry_commons.load_static_assets' do |app|
    #   # puts "Loading static assets for #{root}"
    #   app.middleware.use ::ActionDispatch::Static, "#{root}/app"
    # end
    initializer 'thecore_dataentry_commons.add_to_migrations' do |app|
      # Adds the list of Thecore Engines, so to manage seeds loading, i.e.:
      # Thecore::Base.thecore_engines.each { |engine| engine.load_seed }
      Thecore::Base.thecore_engines << self.class
      unless app.root.to_s.match root.to_s
        # APPEND TO MAIN APP MIGRATIONS FROM THIS GEM
        config.paths['db/migrate'].expanded.each do |expanded_path|
          app.config.paths['db/migrate'] << expanded_path
        end
        #  = app.config.paths['db/migrate'].uniq
        # puts app.config.paths['db/migrate'].map(:path).inspect
      end
    end
  end
end
