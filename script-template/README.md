# script-template

In each of the file, there are tokens that you must change before running the script. The tokens are as following:<br>
- [CHANGE_ME], this token can be replaced with any string you want. This token should be replaced with an identifier for your script running.
- [SRC], this token must be replaced with a language id such as `id` or `jv`, depending on what language pair are you training it for.
- [TGT], this token must be replaced with a language id such as `id` or `jv`, depending on what language pair are you training it for.

Note: 
- SRC must be alphabetically ordered before TGT, so if you are training a pair of language with language id of `ba` and `jv`, that means SRC must be `ba` and TGT must be `jv`
