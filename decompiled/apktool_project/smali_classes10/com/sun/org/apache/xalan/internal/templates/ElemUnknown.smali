.class public Lcom/sun/org/apache/xalan/internal/templates/ElemUnknown;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x3f7a0c22378f7638L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;-><init>()V

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
.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemUnknown;->hasFallbackChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemUnknown;->executeFallbacks(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_2
    return-void
.end method

.method public getXSLToken()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
