.class public Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;
.super Lcom/sun/org/apache/xpath/internal/XPathVisitor;
.source "SourceFile"


# instance fields
.field m_refs:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public doesOccur(Lcom/sun/org/apache/xml/internal/utils/QName;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getVarCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public visitVariableRef(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/operations/Variable;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->getQName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
