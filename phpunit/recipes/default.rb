include_recipe "php"

channels = %w{pear.phpunit.de components.ez.no pear.symfony-project.com}
channels.each do |chan|
  php_pear_channel chan do
    action :discover
  end
end

# update the main pear channel
php_pear_channel 'pear.phpunit.net' do
  action :update
end

php_pear "phpunit/PHPUnit" do
  action :install
end
