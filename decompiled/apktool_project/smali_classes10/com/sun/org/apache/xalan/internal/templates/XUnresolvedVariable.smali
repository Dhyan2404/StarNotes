.class public Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;
.super Lcom/sun/org/apache/xpath/internal/objects/XObject;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x39043df38b0156cL


# instance fields
.field private transient m_context:I

.field private transient m_doneEval:Z

.field private m_isGlobal:Z

.field private transient m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

.field private transient m_varStackContext:I

.field private transient m_varStackPos:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;ILcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;IIZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_doneEval:Z

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_context:I

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iput p4, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_varStackPos:I

    iput p5, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_varStackContext:I

    iput-boolean p6, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_isGlobal:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_doneEval:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ER_REFERENCING_ITSELF"

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_doneEval:Z

    iget v2, v1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_frameSize:I

    if-eq v3, v2, :cond_1

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->link(I)I

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_context:I

    invoke-virtual {v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getValue(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_doneEval:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p0, v1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_frameSize:I

    if-eq v3, p0, :cond_2

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    :cond_2
    return-object v2

    :catchall_0
    move-exception p0

    iget v1, v1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_frameSize:I

    if-eq v3, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    :cond_3
    throw p0
.end method

.method public getType()I
    .locals 0

    const/16 p0, 0x258

    return p0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XUnresolvedVariable ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setVarStackContext(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_varStackContext:I

    return-void
.end method

.method public setVarStackPos(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;->m_varStackPos:I

    return-void
.end method
