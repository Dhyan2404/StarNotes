.class public Lcom/sun/org/apache/xalan/internal/trace/TraceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_traceListeners:Ljava/util/Vector;

.field private m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-void
.end method

.method private getDOMNodeFromDTM(I)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addTraceListener(Lcom/sun/org/apache/xalan/internal/trace/TraceListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setDebug(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    .locals 4

    .line 7
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    .line 10
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;

    if-eqz v3, :cond_0

    .line 11
    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;->extensionEnd(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 4
    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    .line 5
    instance-of v1, p3, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;

    if-eqz v1, :cond_0

    .line 6
    check-cast p3, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;

    invoke-interface {p3, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;->extensionEnd(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireExtensionEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    .locals 4

    .line 7
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    .line 10
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;

    if-eqz v3, :cond_0

    .line 11
    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;->extension(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireExtensionEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 4
    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    .line 5
    instance-of v1, p3, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;

    if-eqz v1, :cond_0

    .line 6
    check-cast p3, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;

    invoke-interface {p3, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;->extension(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireGenerateEvent(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;->generated(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireSelectedEndEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->getDOMNodeFromDTM(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 3
    new-instance p1, Lcom/sun/org/apache/xalan/internal/trace/EndSelectionEvent;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/trace/EndSelectionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEndEvent(Lcom/sun/org/apache/xalan/internal/trace/EndSelectionEvent;)V

    :cond_0
    return-void
.end method

.method public fireSelectedEndEvent(Lcom/sun/org/apache/xalan/internal/trace/EndSelectionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    .line 7
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx;

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx;->selectEnd(Lcom/sun/org/apache/xalan/internal/trace/EndSelectionEvent;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireSelectedEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->getDOMNodeFromDTM(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 3
    new-instance p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEvent(Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;)V

    :cond_0
    return-void
.end method

.method public fireSelectedEvent(Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    .line 7
    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;->selected(Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->getDOMNodeFromDTM(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V

    :cond_0
    return-void
.end method

.method public fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    .line 8
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx2;

    if-eqz v3, :cond_0

    .line 9
    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx2;

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx2;->traceEnd(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->getDOMNodeFromDTM(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V

    :cond_0
    return-void
.end method

.method public fireTraceEvent(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;

    .line 8
    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceListener;->trace(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasTraceListeners()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeTraceListener(Lcom/sun/org/apache/xalan/internal/trace/TraceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->m_traceListeners:Ljava/util/Vector;

    :cond_0
    return-void
.end method
