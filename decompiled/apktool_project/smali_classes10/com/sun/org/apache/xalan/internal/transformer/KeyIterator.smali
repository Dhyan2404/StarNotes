.class public Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x12b90050ba7c0c3dL


# instance fields
.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_name:Lcom/sun/org/apache/xml/internal/utils/QName;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/util/Vector;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;-><init>(I)V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 10

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    check-cast p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_2

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->getMatch()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v6

    invoke-virtual {v6, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->getMatch()Lcom/sun/org/apache/xpath/internal/XPath;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v5, v6, v8

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4

    :catch_0
    move v2, v4

    :catch_1
    move v4, v2

    :cond_2
    if-eqz v4, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_NO_XSLKEY_DECLARATION"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKeyDeclarations()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    return-object p0
.end method

.method public getName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method
