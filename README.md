https://travis-ci.org/cohart/farmsense_wrapper.svg?branch=master

# FarmsenseWrapper

This gem is a lightweight wrapper for the Farmsense API [Farmsense.net]. This wrapper returns a JSON object of nearest weather stations to the input latitude and longitude and a JSON object of frost probabilities for spring or fall.

## Installation

Add this line to your application's Gemfile:

    gem 'farmsense_wrapper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install farmsense_wrapper

## Usage

FarmSenseWrapper.stations(latitude, longitude)

Return's a JSON object of closest stations. To find the probabilities of frost for a station use the id provided.


```
$FarmSenseWrapper.stations(42, -112)

> [{
               "id" => "506586",
             "name" => "NORTHW AY AP",
        "elevation" => "1",
              "lat" => "62.966667",
              "lon" => "-141.933334",
         "distance" => "664.584783026827"
    }]
```

FarmSenseWrapper.dates(id, season)
- spring: 1
- fall: 2

```
FarmSenseWrapper.dates(506586, 2)

> [{
                    "season_id" => "2",
        "temperature_threshold" => "36",
                      "prob_90" => "1016",
                      "prob_80" => "1012",
                      "prob_70" => "1008",
                      "prob_60" => "1005",
                      "prob_50" => "1003",
                      "prob_40" => "0930",
                      "prob_30" => "0927",
                      "prob_20" => "0924",
                      "prob_10" => "0919"
    }]
```




## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
