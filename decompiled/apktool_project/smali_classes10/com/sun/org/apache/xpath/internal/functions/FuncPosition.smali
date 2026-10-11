.class public Lcom/sun/org/apache/xpath/internal/functions/FuncPosition;
.super Lcom/sun/org/apache/xpath/internal/functions/Function;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x7e304793e581981eL


# instance fields
.field private m_isTopLevel:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncPosition;->getPositionInContextNodeList(Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    int-to-double p0, p0

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method

.method public getPositionInContextNodeList(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 2

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncPosition;->m_isTopLevel:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSubContextList()Lcom/sun/org/apache/xpath/internal/axes/SubContextList;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/SubContextList;->getProximityPosition(Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentNode()I

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentPos()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    :try_start_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNode()I

    move-result p1

    :cond_3
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v0, v1, :cond_4

    if-ne v1, p1, :cond_3

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentPos()I

    move-result p0

    return p0

    :cond_5
    return v0
.end method

.method public postCompileStep(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getLocationPathDepth()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncPosition;->m_isTopLevel:Z

    return-void
.end method
