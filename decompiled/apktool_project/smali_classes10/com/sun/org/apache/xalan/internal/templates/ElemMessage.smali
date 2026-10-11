.class public Lcom/sun/org/apache/xalan/internal/templates/ElemMessage;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x153d549875451337L


# instance fields
.field private m_terminate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemMessage;->m_terminate:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 4
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
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformToString(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemMessage;->m_terminate:Z

    invoke-virtual {v1, p0, v0, v2}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->message(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemMessage;->m_terminate:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_STYLESHEET_DIRECTED_TERMINATION"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_2
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "message"

    return-object p0
.end method

.method public getTerminate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemMessage;->m_terminate:Z

    return p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x4b

    return p0
.end method

.method public setTerminate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemMessage;->m_terminate:Z

    return-void
.end method
