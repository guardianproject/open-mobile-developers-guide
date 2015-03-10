# How to use Transifex 'tx' client

## Adding a new resource

tx set -t TXT --auto-local -r developers-corner.three-key-elements-that-define-every-open-source-project '<lang>/1-open-source-foundations/three-key-elements-that-define-every-open-source-project.md' --source-file en/1-open-source-foundations/three-key-elements-that-define-every-open-source-project.md --source-lang en --execute

## Pushing up new resource

tx push -s

## Pulling the translations

tx pull -s
