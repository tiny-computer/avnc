-dontobfuscate
-keepattributes SourceFile,LineNumberTable

-dontwarn java.lang.invoke.StringConcatFactory

# These are mainly needed in full R8 mode, but Connectbot uses these by default
# so we keep these to avoid any breakage.
-keepattributes InnerClasses
-keep public class com.trilead.ssh2.compression.**
-keep public class com.trilead.ssh2.crypto.**

-keep class com.gaurav.avnc.vnc.VncUri {
    public <init>(java.lang.String);
    public com.gaurav.avnc.model.ServerProfile toServerProfile();
}

-keep class com.gaurav.avnc.ui.vnc.VncActivityKt {
    public static android.content.Intent createVncIntent(android.content.Context, com.gaurav.avnc.model.ServerProfile);
}

-keep class com.gaurav.avnc.model.ServerProfile { *; }

# Needed to keep R8 happy about Tink library (used by sshlib)
-dontwarn com.google.errorprone.annotations.Immutable
-dontwarn com.google.errorprone.annotations.CanIgnoreReturnValue
