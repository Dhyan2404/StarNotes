.class public interface abstract Lnet/sf/saxon/regex/RegularExpression;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;
.end method

.method public abstract containsMatch(Lnet/sf/saxon/str/UnicodeString;)Z
.end method

.method public abstract getFlags()Ljava/lang/String;
.end method

.method public abstract isPlatformNative()Z
.end method

.method public abstract matches(Lnet/sf/saxon/str/UnicodeString;)Z
.end method

.method public abstract replace(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract replaceWith(Lnet/sf/saxon/str/UnicodeString;Ljava/util/function/Function;)Lnet/sf/saxon/str/UnicodeString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Lnet/sf/saxon/str/UnicodeString;",
            ">;)",
            "Lnet/sf/saxon/str/UnicodeString;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract tokenize(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/tree/iter/AtomicIterator;
.end method
