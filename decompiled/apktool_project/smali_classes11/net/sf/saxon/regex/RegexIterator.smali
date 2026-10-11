.class public interface abstract Lnet/sf/saxon/regex/RegexIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# virtual methods
.method public abstract getNumberOfGroups()I
.end method

.method public abstract getRegexGroup(I)Lnet/sf/saxon/str/UnicodeString;
.end method

.method public abstract isMatching()Z
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/regex/RegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract next()Lnet/sf/saxon/value/StringValue;
.end method

.method public abstract processMatchingSubstring(Lnet/sf/saxon/regex/RegexMatchHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
