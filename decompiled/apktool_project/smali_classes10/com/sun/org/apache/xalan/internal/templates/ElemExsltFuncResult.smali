.class public Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x3045724a014950b3L


# instance fields
.field private m_callerFrameSize:I

.field private m_isResultSet:Z

.field private m_result:Lcom/sun/org/apache/xpath/internal/objects/XObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;->m_isResultSet:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;->m_result:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;->m_callerFrameSize:I

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->currentFuncResultSeen()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getValue(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentFuncResult()Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushCurrentFuncResult(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "An EXSLT function cannot set more than one result!"

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "result"

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x59

    return p0
.end method
