# Test pixi-build-mojo

In the `pixi-build-backends` project run: `pixi run install-pixi-build-mojo`
Then `export PIXI_BUILD_BACKEND_OVERRIDE='pixi-build-mojo=$HOME/dev/pixi-build-backends/target/release/pixi-build-mojo'`

Docs on override here: https://pixi.sh/dev/build/backends/#overriding-the-build-backend

## Build

```
# Places the conda build in your working dir
pixi build
# or
# Places the conda build in the ./target dir
pixi run b
```

## Issues

- Over specifying deps, need to figure out what goes in host vs build
- Test out installing the built conda package
- Can git paths be used?
