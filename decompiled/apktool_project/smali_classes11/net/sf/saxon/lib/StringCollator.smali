.class public interface abstract Lnet/sf/saxon/lib/StringCollator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I
.end method

.method public abstract comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
.end method

.method public abstract getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
.end method

.method public abstract getCollationURI()Ljava/lang/String;
.end method
