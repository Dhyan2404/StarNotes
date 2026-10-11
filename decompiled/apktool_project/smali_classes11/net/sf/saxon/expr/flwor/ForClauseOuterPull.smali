.class public Lnet/sf/saxon/expr/flwor/ForClauseOuterPull;
.super Lnet/sf/saxon/expr/flwor/ForClausePull;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/ForClause;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/ForClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/ForClause;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->base:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_0
    return-void
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->base:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/om/FocusTrackingIterator;

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/sf/saxon/om/FocusTrackingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    sget-object v3, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-interface {p1, v0, v3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_1
    iput-object v2, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    return v1

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v2

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    new-instance v2, Lnet/sf/saxon/value/Int64Value;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/FocusIterator;->position()I

    move-result p0

    int-to-long v3, p0

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p1, v0, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_4
    return v1

    :cond_5
    iput-object v2, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    goto/16 :goto_0
.end method
