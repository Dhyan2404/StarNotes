.class public Lcom/sun/org/apache/xpath/internal/functions/FuncId;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x7befc5b4bc56b5ceL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;-><init>()V

    return-void
.end method

.method private getNodesByID(Lcom/sun/org/apache/xpath/internal/XPathContext;ILjava/lang/String;Lcom/sun/org/apache/xml/internal/utils/StringVector;Lcom/sun/org/apache/xpath/internal/NodeSetDTM;Z)Lcom/sun/org/apache/xml/internal/utils/StringVector;
    .locals 3

    if-eqz p3, :cond_5

    new-instance p0, Ljava/util/StringTokenizer;

    invoke-direct {p0, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p3

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p2

    :goto_0
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz p4, :cond_1

    invoke-virtual {p4, p3}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    move p3, v0

    goto :goto_0

    :cond_1
    invoke-interface {p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getElementById(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    invoke-virtual {p5, v1, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNodeInDocOrder(ILcom/sun/org/apache/xpath/internal/XPathContext;)I

    :cond_2
    if-eqz p3, :cond_0

    if-nez v0, :cond_3

    if-eqz p6, :cond_0

    :cond_3
    if-nez p4, :cond_4

    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-direct {p4}, Lcom/sun/org/apache/xml/internal/utils/StringVector;-><init>()V

    :cond_4
    invoke-virtual {p4, p3}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->addElement(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-object p4
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v0

    const/4 v1, 0x0

    const/4 v8, -0x1

    if-ne v8, v0, :cond_0

    const-string v2, "ER_CONTEXT_HAS_NO_OWNERDOC"

    invoke-virtual {p0, p1, v2, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->error(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->m_arg0:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v3

    new-instance v9, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-virtual {v9}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->mutableNodeset()Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    move-result-object v10

    const/4 v4, 0x4

    if-ne v4, v3, :cond_2

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v11

    invoke-interface {v11}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v2

    move-object v5, v1

    :goto_0
    if-eq v8, v2, :cond_4

    invoke-interface {v11, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v12

    if-eq v8, v12, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v7, v1

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xpath/internal/functions/FuncId;->getNodesByID(Lcom/sun/org/apache/xpath/internal/XPathContext;ILjava/lang/String;Lcom/sun/org/apache/xml/internal/utils/StringVector;Lcom/sun/org/apache/xpath/internal/NodeSetDTM;Z)Lcom/sun/org/apache/xml/internal/utils/StringVector;

    move-result-object v5

    move v2, v12

    goto :goto_0

    :cond_2
    if-ne v8, v3, :cond_3

    return-object v9

    :cond_3
    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xpath/internal/functions/FuncId;->getNodesByID(Lcom/sun/org/apache/xpath/internal/XPathContext;ILjava/lang/String;Lcom/sun/org/apache/xml/internal/utils/StringVector;Lcom/sun/org/apache/xpath/internal/NodeSetDTM;Z)Lcom/sun/org/apache/xml/internal/utils/StringVector;

    :cond_4
    return-object v9
.end method
