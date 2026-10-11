.class public Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public m_extensionFunctionNamespaces:Ljava/util/Hashtable;

.field private m_sroot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->m_sroot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->launch()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->addExtensionNamespace(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addExtensionNamespace(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->isElementAvailable(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public extFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    if-eqz p0, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->callFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 10
    throw p0

    .line 11
    :cond_0
    new-instance p0, Lcom/sun/org/apache/xpath/internal/XPathProcessorException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_EXTENSION_FUNC_UNKNOWN"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 4
    throw p0

    .line 5
    :cond_0
    new-instance p0, Lcom/sun/org/apache/xpath/internal/XPathProcessorException;

    const-string p3, "ER_EXTENSION_FUNC_UNKNOWN"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->isFunctionAvailable(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    return-object p0
.end method
