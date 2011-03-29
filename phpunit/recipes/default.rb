include_recipe "php"

channels = %w{pear.phpunit.de components.ez.no pear.symfony-project.com}
channels.each do |chan|
  php_pear_channel chan do
    action [:discover, :update]
  end
end

php_pear "PHPUnit" do
  channel "phpunit"
  action :install
end
