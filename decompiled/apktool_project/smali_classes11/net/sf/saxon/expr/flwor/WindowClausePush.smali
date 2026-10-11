.class public Lnet/sf/saxon/expr/flwor/WindowClausePush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field public final b:Lnet/sf/saxon/expr/flwor/WindowClause;

.field public final c:Lnet/sf/saxon/expr/flwor/TuplePush;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/WindowClause$Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/WindowClause;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->c:Lnet/sf/saxon/expr/flwor/TuplePush;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/flwor/WindowClause;->checkWindowContents(Lnet/sf/saxon/expr/flwor/WindowClause$Window;)V

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const p2, 0x7fffffff

    const/4 v0, 0x0

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    iget v2, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    if-ge v2, p2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isDespatched()Z

    move-result v2

    if-nez v2, :cond_0

    iget p2, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    move-object v0, v1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p2

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    invoke-static {v1}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {p3, p2, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    new-instance v2, Lnet/sf/saxon/value/Int64Value;

    iget v3, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p3, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startNextItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_5
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPreviousItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_6
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_7
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    new-instance v2, Lnet/sf/saxon/value/Int64Value;

    iget v3, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p3, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_8
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endNextItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_9
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p1

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPreviousItem:Lnet/sf/saxon/om/Item;

    invoke-static {v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_a
    iget-object p1, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->c:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    iput-boolean p2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->despatched:Z

    goto/16 :goto_0

    :cond_b
    :goto_2
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->c:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void
.end method

.method public processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->isTumblingWindow()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getEndCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, v8}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v12

    const/4 v1, -0x1

    move v2, v9

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-nez v2, :cond_e

    invoke-interface {v12}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v6

    if-nez v6, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    move/from16 v16, v2

    :goto_2
    add-int/lit8 v5, v1, 0x1

    if-lez v5, :cond_c

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->isSlidingWindow()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v11, :cond_2

    goto :goto_3

    :cond_2
    move v7, v5

    move-object v10, v6

    goto :goto_5

    :cond_3
    :goto_3
    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    move-object v2, v14

    move-object v3, v15

    move-object v4, v6

    move/from16 v17, v5

    move-object v10, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/expr/flwor/WindowClause;->matchesStart(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;ILnet/sf/saxon/expr/XPathContext;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v11, :cond_4

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    iput-object v14, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endItem:Lnet/sf/saxon/om/Item;

    iput-object v7, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPreviousItem:Lnet/sf/saxon/om/Item;

    iput-object v15, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endNextItem:Lnet/sf/saxon/om/Item;

    move/from16 v7, v17

    add-int/lit8 v5, v7, -0x1

    iput v5, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->getOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lnet/sf/saxon/expr/flwor/WindowClausePush;->a(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_4
    move/from16 v7, v17

    :goto_4
    new-instance v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    invoke-direct {v1}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;-><init>()V

    iput v7, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    iput-object v15, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startItem:Lnet/sf/saxon/om/Item;

    iput-object v14, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPreviousItem:Lnet/sf/saxon/om/Item;

    iput-object v10, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startNextItem:Lnet/sf/saxon/om/Item;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    iget-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move/from16 v7, v17

    :goto_5
    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v2, v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getEndCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isFinished()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    move-object v2, v5

    move-object v3, v14

    move-object v4, v15

    move-object v9, v5

    move-object v5, v10

    move-object v13, v6

    move v6, v7

    move/from16 v18, v11

    move v11, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/expr/flwor/WindowClause;->matchesEnd(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;ILnet/sf/saxon/expr/XPathContext;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-object v15, v9, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endItem:Lnet/sf/saxon/om/Item;

    iput-object v14, v9, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPreviousItem:Lnet/sf/saxon/om/Item;

    iput-object v10, v9, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endNextItem:Lnet/sf/saxon/om/Item;

    iput v11, v9, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->getOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v1

    invoke-virtual {v0, v9, v1, v8}, Lnet/sf/saxon/expr/flwor/WindowClausePush;->a(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v9}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isDespatched()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    move-object v13, v6

    move/from16 v18, v11

    move v11, v7

    :cond_9
    :goto_8
    move v7, v11

    move-object v6, v13

    move/from16 v11, v18

    const/4 v9, 0x0

    goto :goto_7

    :cond_a
    move-object v13, v6

    move/from16 v18, v11

    move v11, v7

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    iget-object v3, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    move/from16 v18, v11

    move v11, v7

    goto :goto_a

    :cond_c
    move-object v10, v6

    move/from16 v18, v11

    move v11, v5

    :cond_d
    :goto_a
    move v1, v11

    move-object v7, v14

    move-object v14, v15

    move/from16 v2, v16

    move/from16 v11, v18

    const/4 v9, 0x0

    move-object v15, v10

    goto/16 :goto_1

    :cond_e
    iget-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->b:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->isIncludeUnclosedWindows()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClausePush;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    iput-object v14, v3, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endItem:Lnet/sf/saxon/om/Item;

    iput-object v7, v3, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPreviousItem:Lnet/sf/saxon/om/Item;

    const/4 v4, 0x0

    iput-object v4, v3, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endNextItem:Lnet/sf/saxon/om/Item;

    iput v1, v3, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->getOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v8}, Lnet/sf/saxon/expr/flwor/WindowClausePush;->a(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_b

    :cond_f
    return-void
.end method
