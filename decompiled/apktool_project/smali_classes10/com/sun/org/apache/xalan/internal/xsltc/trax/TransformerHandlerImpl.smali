.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# instance fields
.field private _declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private _dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

.field private _done:Z

.field private _dtdHandler:Lorg/xml/sax/DTDHandler;

.field private _handler:Lorg/xml/sax/ContentHandler;

.field private _isIdentity:Z

.field private _lexHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private _locator:Lorg/xml/sax/Locator;

.field private _result:Ljavax/xml/transform/Result;

.field private _systemId:Ljava/lang/String;

.field private _transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

.field private _translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_declHandler:Lorg/xml/sax/ext/DeclHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_locator:Lorg/xml/sax/Locator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_done:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_isIdentity:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {p1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_isIdentity:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->getTranslet()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    :goto_0
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_isIdentity:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_done:Z

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_isIdentity:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    instance-of v1, v0, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v1, :cond_2

    check-cast v0, Ljavax/xml/transform/dom/DOMResult;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->getTransletOutputHandlerFactory()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    :cond_2
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_systemId:Ljava/lang/String;

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_systemId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_declHandler:Lorg/xml/sax/ext/DeclHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_locator:Lorg/xml/sax/Locator;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_isIdentity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->getOutputHandler(Ljavax/xml/transform/Result;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->transferOutputProperties(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_done:Z

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    invoke-virtual {p1, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "ER_RESULT_NULL"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_systemId:Ljava/lang/String;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_result:Ljavax/xml/transform/Result;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_isIdentity:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->hasIdCall()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->getTransformerFactory()Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getDTMManagerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V

    move-object v4, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v4, v0

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getBuilder()Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    move-object v1, v0

    check-cast v1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v1, v0

    check-cast v1, Lorg/xml/sax/DTDHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dtdHandler:Lorg/xml/sax/DTDHandler;

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_declHandler:Lorg/xml/sax/ext/DeclHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->setDocumentURI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    return-void

    :cond_3
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "JAXP_SET_RESULT_ERR"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
