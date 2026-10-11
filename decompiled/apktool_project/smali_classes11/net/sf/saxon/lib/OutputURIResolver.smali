.class public interface abstract Lnet/sf/saxon/lib/OutputURIResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close(Ljavax/xml/transform/Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract newInstance()Lnet/sf/saxon/lib/OutputURIResolver;
.end method

.method public abstract resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method
