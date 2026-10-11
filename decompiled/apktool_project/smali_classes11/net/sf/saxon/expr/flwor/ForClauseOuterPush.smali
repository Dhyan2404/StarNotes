.class public Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field protected destination:Lnet/sf/saxon/expr/flwor/TuplePush;

.field protected forClause:Lnet/sf/saxon/expr/flwor/ForClause;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/ForClause;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->destination:Lnet/sf/saxon/expr/flwor/TuplePush;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->destination:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void
.end method

.method public processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->destination:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v3

    invoke-interface {p1, v3, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    new-instance v3, Lnet/sf/saxon/value/Int64Value;

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p1, v1, v3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;->destination:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-void
.end method
