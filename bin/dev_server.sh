#!/usr/bin/env bash

[ "$DDG_WHOAMI" == "" ] && export DDG_WHOAMI=$( whoami )
[ "$DDG_HOST"   == "" ] && export DDG_HOST=$( printf 'https://%s.duckduckgo.com' $DDG_WHOAMI )

[ "$DDG_DYNAMIC_SETTINGS_JS_FILE" == "" ] && \
    export DDG_DYNAMIC_SETTINGS_JS_FILE=$( printf '%s/set.js' $DDG_HOST )
[ "$DDG_DYNAMIC_JS_FILE"          == "" ] && \
    export DDG_DYNAMIC_JS_FILE=$( printf '%s/base.js' $DDG_HOST )
[ "$DDG_DYNAMIC_JS_2_FILE"        == "" ] && \
    export DDG_DYNAMIC_JS_2_FILE=$( printf '%s/serp.js' $DDG_HOST )

[ "$DDG_DYNAMIC_CSS_FILE"   == "" ] && \
    export DDG_DYNAMIC_CSS_FILE=$( printf '%s/style.css' $DDG_HOST )
[ "$DDG_DYNAMIC_CSS_2_FILE" == "" ] && \
    export DDG_DYNAMIC_CSS_2_FILE=$( printf '%s/static.css' $DDG_HOST )
[ "$DDG_DYNAMIC_CSS_2_FILE" == "" ] && \
    DDG_DYNAMIC_CSS_3_FILE=$( printf '%s/serp.css' $DDG_HOST )

echo $DDG_WHOAMI;

duckpan publisher
