Rails.configuration.to_prepare do
  Alchemy::User.class_eval do
    def spree_roles
      if admin?
        ::Spree::Role.where(name: 'admin')
      else
        ::Spree::Role.where('1 = 0') # aka. empty relation
      end
    end
  end
end
