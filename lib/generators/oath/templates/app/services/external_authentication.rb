class ExternalAuthentication
  def initialize(auth_hash)
    @auth_hash = auth_hash
  end

  def perform
    if scope.exists?
      scope.first
    else
      transaction { scope.create(user: user) }
    end
  end

  private

  attr_reader :auth_hash

  def user
    User.find_by(email: email) || create_user
  end

  def create_user
    Oath::Services::SignUp.new(user_params).perform
  end

  def transaction(&block)
    ExternalCredential.transaction(&block)
  end

  def user_params
    {
      email: email,
      password: random_password
    }
  end

  def email
    auth_hash["info"]["email"]
  end

  def random_password
    SecureRandom.hex
  end

  def scope
    ExternalCredential.where(credential_params)
  end

  def credential_params
    {
      provider: auth_hash["provider"],
      uid: auth_hash["uid"]
    }
  end
end
