.class public interface abstract Lnet/sf/saxon/lib/ResourceCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCollectionURI()Ljava/lang/String;
.end method

.method public abstract getResourceURIs(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getResources(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Iterator<",
            "+",
            "Lnet/sf/saxon/lib/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract isStable(Lnet/sf/saxon/expr/XPathContext;)Z
.end method
