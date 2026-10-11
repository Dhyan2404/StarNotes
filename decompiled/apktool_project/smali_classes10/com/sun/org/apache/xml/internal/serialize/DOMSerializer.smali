.class public interface abstract Lcom/sun/org/apache/xml/internal/serialize/DOMSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract serialize(Lorg/w3c/dom/Document;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract serialize(Lorg/w3c/dom/DocumentFragment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract serialize(Lorg/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
