.class public Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x3c6e37d4c54c533L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensionHandlerClass()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    invoke-direct {v2, p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensionNamespacesManager()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->registerExtension(Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;)V

    const-string v1, "http://exslt.org/functions"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    invoke-direct {v2, v1, v0, p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensionNamespacesManager()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->registerExtension(Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;)V

    :cond_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;[Lcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->link(I)I

    move-result v2

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_inArgsSize:I

    array-length v4, p2

    if-lt v3, v4, :cond_5

    if-lez v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/sun/org/apache/xpath/internal/VariableStack;->clearLocalSlots(II)V

    array-length v3, p2

    if-lez v3, :cond_2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    instance-of v5, v5, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getIndex()I

    move-result v5

    aget-object v6, p2, v4

    invoke-virtual {v0, v5, v6, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_3
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "function called with too many args"

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "function"

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x58

    return p0
.end method
