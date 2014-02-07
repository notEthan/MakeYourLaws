class Ability
  include CanCan::Ability

  def initialize user
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
    # actions: :read, :create, :update, :destroy; :manage
    # resource: :all or class name
    # final: conditions hash
    
    can :read, [Fec::Candidate, Fec::Committee, Initiative]
    # can :read, User 
    can :create, [Payments::Paypal::Transaction]#, Paypal::Preapproval]
    can :create, [Payments::Stripe::Charge]#, Paypal::Preapproval]
    
    # user ||= User.new # guest user (not logged in)
    if user
      if user.is_admin?
        can :manage, :all
      else
        if user.is_alpha?
          can :manage, [Initiative, Committee]
          can :manage, [Payments::Paypal::Transaction, Cart], #Paypal::Preapproval], 
            :user_id => user.id
          can :manage, [Payments::Stripe::Charge, Cart],
            :user_id => user.id
        end
        can :manage, User, :id => user.id
      end
    end
  end
end
