# RBS Steep Demo

Demo (lack of) type narrowing.

## Usage

1. Clone this repo.

2. Install dependencies: `bundle install`

3. Check types with Steep: `bundle exec steep check rbs_steep_demo.rb`

4. Note the following error is reported:

   ```
   rbs_steep_demo.rb:12:18: [error] Type `(::Integer | nil)` does not have method `+`
   │ Diagnostic ID: Ruby::NoMethod
   │
   └     @maybe_number + 1
                       ~

   Detected 1 problem from 1 file
   ```

5. Consider that the early return on `rbs_steep_demo.rb#L10` (`return if @maybe_number.nil?`) should narrow the type of `@maybe_number` to `Integer`, and that `Integer` has a method `+`.

## References

- [RBS](https://github.com/ruby/rbs)
- [Steep](https://github.com/soutaro/steep)
