# CodeVersion
The mountable rails engine that provide api call to get the git commit number on server (at rails root directory)

## Usage
After install you can go to the url to get a git commit number of code that deploy on server.
Url example: http://your_domain/api/metadata

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'code_version', '~> 0.1.6'
```

And then execute:
```bash
$ bundle
```

And mount rails engine routes to your application routes by putting
```ruby
Rails.application.routes.draw do
	...
	mount CodeVersion::Engine => "api/metadata"
	...
end
```


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
