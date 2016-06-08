# IntelliJ Settings

For IntelliJ IDEA CE and related products.

There's a plugin called [Settings Repository](https://plugins.jetbrains.com/plugin/7566) that tries to accomplish something similar to this, but it's awful.

## Usage:

To import:

1. JAR the files under [`settings`](settings)
  * `jar cvf settings.jar settings/*`
2. (optional) Delete your current settings to start fresh
  * Find where they're stored [here](https://intellij-support.jetbrains.com/hc/en-us/articles/206544519)
3. Open IntelliJ to the welcome screen
4. Choose **Configure > Import Settings**
5. Select the JAR you just created

To export:

1. Open IntelliJ to the welcome screen
2. Choose **Configure > Export Settings**
3. Extract the JAR you just created to [`settings`](settings)
