.class public interface abstract Lorg/apache/xerces/dom3/as/DOMASBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSParser;


# virtual methods
.method public abstract getAbstractSchema()Lorg/apache/xerces/dom3/as/ASModel;
.end method

.method public abstract parseASInputSource(Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/dom3/as/ASModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract parseASURI(Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setAbstractSchema(Lorg/apache/xerces/dom3/as/ASModel;)V
.end method
