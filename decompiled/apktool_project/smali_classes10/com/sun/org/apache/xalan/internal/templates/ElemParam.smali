.class public Lcom/sun/org/apache/xalan/internal/templates/ElemParam;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0xfb4e5416fd9a45fL


# instance fields
.field m_qnameID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/ElemParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)V

    return-void
.end method


# virtual methods
.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getQNameID(Lcom/sun/org/apache/xml/internal/utils/QName;)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;->m_qnameID:I

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result p1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x58

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_inArgsSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_inArgsSize:I

    :cond_1
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 3
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
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_index:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->isLocalSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getValue(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v1

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_index:I

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V

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

    const-string p0, "param"

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x29

    return p0
.end method
