.class public interface abstract Lcom/sunia/HTREnginev2/pqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/XMLDocumentHandler;


# virtual methods
.method public abstract cdata(Lorg/w3c/dom/CDATASection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract characters(Lorg/w3c/dom/Text;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract comment(Lorg/w3c/dom/Comment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract doctypeDecl(Lorg/w3c/dom/DocumentType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Lorg/w3c/dom/ProcessingInstruction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V
.end method

.method public abstract setIgnoringCharacters(Z)V
.end method
