.class public Lcom/sun/org/apache/xalan/internal/templates/ElemSort;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x454568220538dba2L


# instance fields
.field private m_caseorder_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_dataType_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_order_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_dataType_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_order_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_caseorder_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_caseorder_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_dataType_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_order_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_4
    return-void
.end method

.method public getCaseOrder()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_caseorder_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getDataType()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_dataType_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getLang()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "sort"

    return-object p0
.end method

.method public getOrder()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_order_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getSelect()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public setCaseOrder(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_caseorder_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setDataType(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_dataType_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setLang(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setOrder(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_order_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    goto :goto_0

    :cond_0
    const-string p1, "ER_NO_CURLYBRACE"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
