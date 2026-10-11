.class public Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x2c02dca9933f0c58L


# instance fields
.field m_decl:Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;

.field m_extns:Ljava/lang/String;

.field m_lang:Ljava/lang/String;

.field m_scriptSrc:Ljava/lang/String;

.field m_srcURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->m_decl:Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;

    return-void
.end method

.method private executeFallbacks(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemFallback;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemFallback;->executeFallback(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    throw p0

    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getElemExtensionDecl(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    const/16 v2, 0x55

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasFallbackChildren()Z
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitExtensionElement(Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)Z

    move-result p0

    return p0
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getElemExtensionDecl(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->m_decl:Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensionNamespacesManager()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getExtensionsTable()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->get(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->hasFallbackChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->executeFallbacks(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_CALL_TO_EXT_FAILED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v6

    move-object v4, p0

    move-object v5, p1

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->processElement(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->hasFallbackChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->executeFallbacks(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v1, :cond_5

    check-cast v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    :cond_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_EXTENSION_ELEMENT_NOT_ALLOWED_IN_SECURE_PROCESSING"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    invoke-virtual {v0, p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x4f

    return p0
.end method
