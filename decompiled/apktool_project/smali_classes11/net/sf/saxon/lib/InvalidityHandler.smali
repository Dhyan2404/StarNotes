.class public interface abstract Lnet/sf/saxon/lib/InvalidityHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract endReporting()Lnet/sf/saxon/om/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract reportInvalidity(Lnet/sf/saxon/lib/Invalidity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract startReporting(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
