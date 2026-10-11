.class public Lcom/sun/org/apache/xpath/internal/patterns/ContextMatchStepPattern;
.super Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x1a33da6115f1aa26L


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(III)V

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

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getIteratorRoot()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result p1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getStaticScore()Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0
.end method

.method public executeRelativePathPattern(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    iget v5, v0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_axis:I

    invoke-static {v5}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getIteratorRoot()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v7, v10, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/16 v11, 0xb

    if-ne v11, v5, :cond_1

    if-eqz v7, :cond_1

    const/16 v5, 0xf

    :cond_1
    invoke-interface {v4, v5}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v11

    :goto_1
    const/4 v12, -0x1

    if-eq v12, v11, :cond_7

    :try_start_0
    invoke-virtual {v1, v11}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xpath/internal/patterns/ContextMatchStepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    sget-object v13, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eq v2, v13, :cond_3

    invoke-virtual {v0, v1, v4, v3}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->executePredicates(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/dtm/DTM;I)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    return-object v2

    :cond_2
    move-object v2, v13

    :cond_3
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    :try_start_1
    invoke-interface {v4, v11}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v13

    if-ne v9, v13, :cond_6

    move v14, v10

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v10, :cond_6

    invoke-interface {v4, v14}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    if-eq v12, v15, :cond_5

    :try_start_2
    invoke-virtual {v1, v15}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xpath/internal/patterns/ContextMatchStepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    sget-object v8, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v8, :cond_4

    if-eq v2, v8, :cond_4

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    return-object v2

    :cond_4
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {v14, v11, v15}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v15

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x9

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {v5, v3, v11}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v11

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw v0

    :cond_7
    return-object v2
.end method
