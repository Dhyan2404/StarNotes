.class public interface abstract Lnet/sf/saxon/regex/RegexMatchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract characters(Lnet/sf/saxon/str/UnicodeString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract onGroupEnd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract onGroupStart(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
