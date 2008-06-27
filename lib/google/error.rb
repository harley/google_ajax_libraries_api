module RPH
  module Google
    module AjaxLibraries
      # base error class to DRY up error messages
      class Error < RuntimeError
        def self.message(msg=nil); msg.nil? ? @message : self.message = msg; end
        def self.message=(msg); @message = msg; end
      end
      
      # raised when a :version => '0.0.0' option is passed in, that doesn't
      # meet the supported versions on Google
      class InvalidVersion < Error
        message "sorry, that version is not supported"; end
      
      # raised when no library is passed into the google_js_library_for() helper
      class MissingLibrary < Error
        message "you must specify which library you want to load"; end
    end
  end
end