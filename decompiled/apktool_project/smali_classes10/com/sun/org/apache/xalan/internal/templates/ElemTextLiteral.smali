.class public Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x6d412a2f6b050c38L


# instance fields
.field private m_ch:[C

.field private m_disableOutputEscaping:Z

.field private m_preserveSpace:Z

.field private m_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_disableOutputEscaping:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_ch:[C

    array-length v3, v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    if-eqz v1, :cond_2

    const-string v1, "javax.xml.transform.enable-output-escaping"

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_2
    throw v0
.end method

.method public getChars()[C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_ch:[C

    return-object p0
.end method

.method public getDisableOutputEscaping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    return p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "#Text"

    return-object p0
.end method

.method public declared-synchronized getNodeValue()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_str:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_ch:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_str:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_str:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreserveSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_preserveSpace:Z

    return p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x4e

    return p0
.end method

.method public setChars([C)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_ch:[C

    return-void
.end method

.method public setDisableOutputEscaping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    return-void
.end method

.method public setPreserveSpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->m_preserveSpace:Z

    return-void
.end method
