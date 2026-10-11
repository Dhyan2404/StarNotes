.class public Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x30718f09b2e3a7e2L


# instance fields
.field private m_disableOutputEscaping:Z

.field private m_isDot:Z

.field private m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_isDot:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v5

    invoke-virtual {v1, v5, v5}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNodeAndExpression(II)V

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_disableOutputEscaping:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v10, ""

    if-eqz v3, :cond_1

    :try_start_1
    const-string v3, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v2, v3, v10}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v4

    const-string v7, "select"

    iget-object v8, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    move-object v6, p0

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1, v2}, Lcom/sun/org/apache/xpath/internal/Expression;->executeCharsToContentHandler(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/xml/sax/ContentHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v3, :cond_3

    invoke-interface {v2, v0, v10}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    iget-boolean v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v4, :cond_5

    invoke-interface {v2, v0, v10}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    throw v3
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_6
    throw v0
.end method

.method public getDisableOutputEscaping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "value-of"

    return-object p0
.end method

.method public getSelect()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public setDisableOutputEscaping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return-void
.end method

.method public setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_isDot:Z

    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method
