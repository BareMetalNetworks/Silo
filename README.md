# Silo
Market garden rails farm site, with products and membership. 

# Deployment
## Create user and pull code
```
adduser silo
mkdir -p /var/www/silo
chown silo: /var/www/silo
cd /var/www/silo
sudo -u silo -H git clone https://github.com/BareMetalNetworks/Silo
sudo -u silo -H bash -l
rvm use ruby-3.0.0
cd /var/www/silo/Silo
bundle install --deployment --without development test
```

## Edit database.yml
```
vi config/database.yml
```
## Generate secret
```
bundle exec rake secret
```
## Put secret in config/secrets.yml
```
production:
	secret_key_base: <output of rake secret>
```
## Secure Perms for config and db

```
chmod 700 config db
chmod 600 config/database.yml config/secrets.yml
```
## Precomiple assets
```
bundle exec rake assets:precompile db:migrate RAILS_ENV=production
```
## Configure Nginx

### Determine ruby command to use with passenger
```
passenger-config about ruby-command
```
#### passenger_ruby /usr/local/rvm/gems/ruby-3.0.0/wrappers/ruby
### Edit Nginx Config File
#### vi /etc/nginx/sites-enabled/silo.conf
```
server {
	listen 80;
	server_name example.com;
	root /var/www/silo/Silo/app/public;
	passenger_ruby /usr/local/rvm/gems/ruby-3.0.0/wrappers/ruby;
}
```
### Restart Nginx
```
service nginx restart
```


# Deploy Updates

From the app directory run:
```
cd ../ ; git pull; cd -; bundle install --deployment --without development test; bundle exec rake assets:precompile db:migrate RAILS_ENV=production; passenger-config restart-app $(pwd)
```
