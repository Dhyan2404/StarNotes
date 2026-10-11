.class public interface abstract Lnet/sf/saxon/om/FocusIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# virtual methods
.method public abstract current()Lnet/sf/saxon/om/Item;
.end method

.method public abstract getLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract position()I
.end method
