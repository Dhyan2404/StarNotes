.class public interface abstract Lorg/apache/xerces/dom3/as/ASNamedObjectMap;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getLength()I
.end method

.method public abstract getNamedItem(Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASObject;
.end method

.method public abstract getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASObject;
.end method

.method public abstract item(I)Lorg/apache/xerces/dom3/as/ASObject;
.end method

.method public abstract removeNamedItem(Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setNamedItem(Lorg/apache/xerces/dom3/as/ASObject;)Lorg/apache/xerces/dom3/as/ASObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setNamedItemNS(Lorg/apache/xerces/dom3/as/ASObject;)Lorg/apache/xerces/dom3/as/ASObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
