unless Rails.env.production?
  ENV['HTTP_USER'] = 'hello'
  ENV['HTTP_PASS'] = 'peeps'
end