# ReversePolishNotation
A gem which provides rake task to perform arithmetic operations using reverse polish notation. It supports command line input / output at the moment but provides flexibility to add other sources in future. It is developed under the guidelines provided [here](https://gist.github.com/joedean/078a62b9ec03b38dfc519b3a5f168b07)

## Usage

Clone this repo and run

```
bin/setup
```
This will install the bundler and then it will install all the dependencies.

## Rpn Calculator command:
    rake calculate_by_rpn:cli

## Run tests
    bundle exec rspec    

## Future Enhancements

-  We can add another sources for input / output under `lib/reverse_polish_notation/providers`
-  We can provide support of other arithmetic operators like %, ^ etc.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ReversePolishNotation project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/g-soni/reverse_polish_notation/blob/master/CODE_OF_CONDUCT.md).
