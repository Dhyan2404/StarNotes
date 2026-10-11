.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Ljavax/xml/transform/sax/TemplatesHandler;
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;


# instance fields
.field private _indentNumber:I

.field private _parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

.field private _systemId:Ljava/lang/String;

.field private _templates:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

.field private _tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

.field private _uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_templates:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_indentNumber:I

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-direct {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;-><init>()V

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setSecureProcessing(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->characters([CII)V

    return-void
.end method

.method public endDocument()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->endDocument()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_systemId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/Util;->baseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    const-string v2, "translet-name"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getDocumentRoot()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->errorsFound()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->makeStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_systemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setParentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setSourceLoader(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;)V

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->createAST(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    move-object v3, v1

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->errorsFound()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->isMultiDocument()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setMultiDocument(Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->hasIdCall()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setHasIdCall(Z)V

    const-class v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    monitor-enter v1
    :try_end_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->translate()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->errorsFound()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getBytecodes()[[B

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getBytecodes()[[B

    move-result-object v3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getOutputProperties()Ljava/util/Properties;

    move-result-object v5

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_indentNumber:I

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;-><init>([[BLjava/lang/String;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_templates:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p0, :cond_4

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getErrors()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_6

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v1, "JAXP_COMPILE_ERR"

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
    :try_end_2
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "JAXP_COMPILE_ERR"

    invoke-direct {v0, v1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_systemId:Ljava/lang/String;

    return-object p0
.end method

.method public getTemplates()Ljavax/xml/transform/Templates;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_templates:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->ignorableWhitespace([CII)V

    return-void
.end method

.method public loadSource(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;)Lorg/xml/sax/InputSource;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-interface {p0, p1, p2}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/Util;->getInputSource(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->setSystemId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_systemId:Ljava/lang/String;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->init()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setOutputType(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
