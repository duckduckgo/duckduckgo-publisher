# goodies template pieces

this directory contains template files that are used to build the final goodies
template file goodies.tx. Most of it still needs to have translation calls added.

This is because goodies.tx is itself generated from plugin metadata. Until we
have a system in place to translate the plugins themselves, the templates in
this directory are used to separate the pieces which can be translated.

topics-in.json is a map from the topic name as stored in plugin metadata to a
template translation call. translation calls still need to be inserted.
