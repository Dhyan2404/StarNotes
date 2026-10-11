.class public interface abstract Lnet/sf/saxon/functions/Fold;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isFinished()Z
.end method

.method public abstract processItem(Lnet/sf/saxon/om/Item;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract result()Lnet/sf/saxon/om/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
