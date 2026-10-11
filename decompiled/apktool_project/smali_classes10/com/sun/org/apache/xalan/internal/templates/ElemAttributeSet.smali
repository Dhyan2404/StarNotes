.class public Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemUse;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x5ec160efa4ea010L


# instance fields
.field public m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method


# virtual methods
.method public appendChildElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_CANNOT_ADD"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 1
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
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->isRecursiveAttrSet(Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemAttributeSet(Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;)V

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemAttribute;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemAttribute;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemAttribute;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemAttributeSet()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_XSLATTRSET_USED_ITSELF"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "attribute-set"

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recomposeAttributeSets(Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;)V

    return-void
.end method

.method public setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method
