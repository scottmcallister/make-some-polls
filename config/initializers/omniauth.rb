Rails.application.config.middleware.use OmniAuth::Builder do
  provider  :facebook,
            '323213378068456', '2de48ca4130edd05c6aa92487a04e534',
            scope: 'public_profile', display: 'page', image_size: 'square'
end
