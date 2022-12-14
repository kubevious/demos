# Helm Kong App Demo

## Validate Chart
```sh
$ kubevious guard chart/
```


## Validate Chart with CRDs
```sh
$ kubevious guard chart/ ../../crds/kong
```


## Validate Chart with CRDs and Mock Manifests
```sh
$ kubevious guard chart/ ../../crds/kong mock/
```



## Validate Chart with Helm Overrides
Test for DEV environment:
```sh
$ kubevious guard #helm@chart@values=overrides/dev.yaml ../../crds/kong mock/ 
```

Test for PROD environment:
```sh
$ kubevious guard #helm@chart@values=overrides/dev.yaml ../../crds/kong mock/ 
```