module Alchemy
  ControllerActions.module_eval do
    private
    # Stores language's id in the session.
    #
    # Also stores language in +Language.current+
    #
    def store_current_alchemy_language(language)
      if language && language.id
        session[:alchemy_language_id] = language.id
        session[:locale] = language.code
        Language.current = language
      end
    end
  end
end
