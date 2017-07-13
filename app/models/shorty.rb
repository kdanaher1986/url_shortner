class Shorty < ApplicationRecord

	after_create :generate_short_url


	private
	def generate_short_url
		self.update_attributes(short_url: (self.id.to_s + SecureRandom.urlsafe_base64(5)))
	end
end
