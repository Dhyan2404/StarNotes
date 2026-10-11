.class public Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# static fields
.field private static DEBUG:Z


# instance fields
.field private m_baseSystemID:Ljava/lang/String;

.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field private m_declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_dtdHandler:Lorg/xml/sax/DTDHandler;

.field m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field private m_entityResolver:Lorg/xml/sax/EntityResolver;

.field private m_errorHandler:Lorg/xml/sax/ErrorHandler;

.field private final m_incremental:Z

.field private m_insideParse:Z

.field private m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_locator:Lorg/xml/sax/Locator;

.field private final m_optimizer:Z

.field private m_result:Ljavax/xml/transform/Result;

.field private final m_source_location:Z

.field private m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ZLjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_insideParse:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getIncremental()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_incremental:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOptimize()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_optimizer:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getSource_location()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_source_location:Z

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#attributeDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", etc..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v2, :cond_1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_1
    return-void
.end method

.method public clearCoRoutine()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->clearCoRoutine(Lorg/xml/sax/SAXException;)V

    return-void
.end method

.method public clearCoRoutine(Lorg/xml/sax/SAXException;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setExceptionThrown(Ljava/lang/Exception;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    instance-of p1, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz p1, :cond_3

    .line 4
    sget-boolean p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "In clearCoRoutine..."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;->deliverMoreNodes(Z)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 12
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 13
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    .line 14
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 15
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :goto_0
    sget-boolean p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 18
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "...exiting clearCoRoutine"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public comment([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_1
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#elementDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_1
    return-void
.end method

.method public endDTD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endDTD"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_1
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endDocument"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_insideParse:Z

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_incremental:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->waitTransformThread()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->run()V

    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endPrefixMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    instance-of v1, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#externalEntityDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    instance-of v1, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    return-void

    :catch_1
    throw p1
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#ignorableWhitespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#internalEntityDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#processingInstruction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 3

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#setDocumentLocator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->setSystemId(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_2
    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setSerializationHandler(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_RESULT_COULD_NOT_BE_SET"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_RESULT_NULL"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#skippedEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#startCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_1
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startDTD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#startDocument"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_insideParse:Z

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_incremental:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->runTransformThread(I)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_2
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startPrefixMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    instance-of v0, p0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    throw p1
.end method
