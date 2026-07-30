# Applied only to this library module's own release R8 pass (not shipped to
# consumers via consumerProguardFiles). Shrinking/inlining is still useful here,
# but renaming classes down to single-letter names (e.g. `a.a`) is not: this AAR
# is never installed as a standalone APK, and consumers run their own R8 pass
# afterwards anyway. Obfuscating at this layer only risks class-name collisions
# with other libraries that also self-obfuscate to short, non-unique names.
-dontobfuscate
