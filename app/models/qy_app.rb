class QyApp < ActiveRecord::Base

  before_create :init_qy_secret_key

  private

    def init_qy_secret_key
      self.qy_secret_key = SecureRandom.hex(8)
    end
end
