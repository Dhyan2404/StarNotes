.class public Lcom/sun/org/apache/xalan/internal/templates/ElemWhen;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x530bac13a4dbf840L


# instance fields
.field private m_test:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWhen;->m_test:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWhen;->m_test:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWhen;->m_test:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "when"

    return-object p0
.end method

.method public getTest()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWhen;->m_test:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x26

    return p0
.end method

.method public setTest(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWhen;->m_test:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method
