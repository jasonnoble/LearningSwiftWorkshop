# Intro to Swift through playgrounds
The following is a series of markdown files that use [Jason Sandmeyer's Playground NodeJS utility](https://github.com/jas/playground) to generate.

# Prerequisites
 - XCode 6.1.1, but hopefully 6.2 (currently in beta)

# Generating Playgrounds
 - install [Playground utility](https://github.com/jas/playground)
 - `bash gen.sh`
 - this will delete `output/`, then re-generate the playgrounds there again

The Markdown Files are marked-up as follows:

```
    <code class="code-voice">frankfurter leberkas</code>

    <div class="code-block">
      if let bacon in swine.belly {
        bacon.getInMyBelly()
      }
    </div>

    working swift code
    ```swift
    var foo = "pig"
    println("\(foo) oinks")

    ```

    <div class="look-block">
      <span class="title">Look</span>
      <p>Tongue biltong capicola ball tip.</p>
    </div>

    <div class="fix-block">
      <span class="title">Fix</span>
      <p>Turducken cupim brisket turkey.</p>
    </div>

    <div class="write-block">
      <span class="title">Write</span>
      <p>Prosciutto chuck frankfurter meatloa.</p>
    </div>

    <div class="extra-block">
      <span class="title">Write</span>
      <p>Prosciutto chuck frankfurter meatloa.</p>
    </div>

```