.class public Lnet/sf/saxon/expr/flwor/WindowClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/expr/flwor/WindowClause;

.field public final b:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public c:Lnet/sf/saxon/om/SequenceIterator;

.field public d:Z

.field public e:Lnet/sf/saxon/om/Item;

.field public f:Lnet/sf/saxon/om/Item;

.field public g:Lnet/sf/saxon/om/Item;

.field public h:I

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/WindowClause$Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/WindowClause;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->d:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->g:Lnet/sf/saxon/om/Item;

    const/4 p3, -0x1

    iput p3, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->b:Lnet/sf/saxon/expr/flwor/TuplePull;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/WindowClause$Window;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/flwor/WindowClause;->checkWindowContents(Lnet/sf/saxon/expr/flwor/WindowClause$Window;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClausePull;->b()Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lnet/sf/saxon/expr/flwor/WindowClause$Window;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v0, 0x7fffffff

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    iget v4, v3, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    if-ge v4, v0, :cond_0

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isDespatched()Z

    move-result v4

    if-nez v4, :cond_0

    iget v0, v3, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isFinished()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->despatched:Z

    return-object v2

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final c(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    iget-object v1, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    invoke-static {v1}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    new-instance v2, Lnet/sf/saxon/value/Int64Value;

    iget v3, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startNextItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPreviousItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_3
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_4
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    new-instance v2, Lnet/sf/saxon/value/Int64Value;

    iget v3, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    iget-object v2, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endNextItem:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_6
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p0

    iget-object v1, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPreviousItem:Lnet/sf/saxon/om/Item;

    invoke-static {v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_7
    iput-boolean v0, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->despatched:Z

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->c:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->b:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    return-void
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClausePull;->b()Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/flwor/WindowClausePull;->c(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/expr/XPathContext;)V

    return v1

    :cond_0
    iget-boolean v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->d:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->c:Lnet/sf/saxon/om/SequenceIterator;

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->b:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->c:Lnet/sf/saxon/om/SequenceIterator;

    iput-boolean v3, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->d:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    const/4 v4, -0x1

    iput v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    iput-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iput-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->g:Lnet/sf/saxon/om/Item;

    :cond_2
    iget-boolean v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->d:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->isTumblingWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getEndCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iput-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->g:Lnet/sf/saxon/om/Item;

    iput-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->c:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v5}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    iput-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->g:Lnet/sf/saxon/om/Item;

    if-nez v5, :cond_4

    iput-boolean v1, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->d:Z

    :cond_4
    iget v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    add-int/2addr v5, v1

    iput v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/WindowClause;->isSlidingWindow()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    iget-object v6, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    iget-object v7, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    iget-object v8, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iget-object v9, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->g:Lnet/sf/saxon/om/Item;

    iget v10, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Lnet/sf/saxon/expr/flwor/WindowClause;->matchesStart(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;ILnet/sf/saxon/expr/XPathContext;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    iput-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endItem:Lnet/sf/saxon/om/Item;

    iput-object v4, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPreviousItem:Lnet/sf/saxon/om/Item;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iput-object v2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endNextItem:Lnet/sf/saxon/om/Item;

    iget v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    sub-int/2addr v2, v1

    iput v2, v0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_6
    new-instance v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    invoke-direct {v2}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;-><init>()V

    iget v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    iput v4, v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iput-object v4, v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startItem:Lnet/sf/saxon/om/Item;

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    iput-object v4, v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPreviousItem:Lnet/sf/saxon/om/Item;

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->g:Lnet/sf/saxon/om/Item;

    iput-object v4, v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startNextItem:Lnet/sf/saxon/om/Item;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isFinished()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v4, v4, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getEndCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_2

    :cond_a
    move v2, v3

    :goto_2
    iget-boolean v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->d:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/WindowClause;->isIncludeUnclosedWindows()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v1

    goto :goto_3

    :cond_b
    move v4, v3

    :goto_3
    if-nez v2, :cond_c

    if-eqz v4, :cond_10

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isFinished()Z

    move-result v7

    if-nez v7, :cond_d

    if-nez v4, :cond_e

    iget-object v7, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a:Lnet/sf/saxon/expr/flwor/WindowClause;

    iget-object v9, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    iget-object v10, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iget-object v11, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->g:Lnet/sf/saxon/om/Item;

    iget v12, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    move-object v8, v6

    move-object v13, p1

    invoke-virtual/range {v7 .. v13}, Lnet/sf/saxon/expr/flwor/WindowClause;->matchesEnd(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;ILnet/sf/saxon/expr/XPathContext;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_e
    iget-object v7, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->f:Lnet/sf/saxon/om/Item;

    iput-object v7, v6, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endItem:Lnet/sf/saxon/om/Item;

    iget-object v7, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->e:Lnet/sf/saxon/om/Item;

    iput-object v7, v6, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPreviousItem:Lnet/sf/saxon/om/Item;

    iget-object v7, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->g:Lnet/sf/saxon/om/Item;

    iput-object v7, v6, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endNextItem:Lnet/sf/saxon/om/Item;

    iget v7, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->h:I

    iput v7, v6, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    if-nez v0, :cond_d

    invoke-virtual {p0, v6, p1}, Lnet/sf/saxon/expr/flwor/WindowClausePull;->a(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    move-result-object v0

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->isDespatched()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/flwor/WindowClause$Window;

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/WindowClausePull;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/flwor/WindowClausePull;->c(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/expr/XPathContext;)V

    return v1

    :cond_11
    return v3
.end method
