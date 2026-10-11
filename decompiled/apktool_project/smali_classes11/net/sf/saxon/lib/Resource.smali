.class public interface abstract Lnet/sf/saxon/lib/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getItem()Lnet/sf/saxon/om/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getResourceURI()Ljava/lang/String;
.end method
