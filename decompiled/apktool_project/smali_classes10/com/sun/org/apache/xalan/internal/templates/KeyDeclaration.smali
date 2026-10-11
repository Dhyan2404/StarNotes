.class public Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x6b3144966407f67eL


# instance fields
.field private m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

.field private m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

.field private m_use:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setUid(I)V

    return-void
.end method


# virtual methods
.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
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

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_use:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    return-void
.end method

.method public getMatch()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "key"

    return-object p0
.end method

.method public getUse()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_use:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x1f

    return p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recomposeKeys(Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;)V

    return-void
.end method

.method public setMatch(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public setUse(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->m_use:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method
