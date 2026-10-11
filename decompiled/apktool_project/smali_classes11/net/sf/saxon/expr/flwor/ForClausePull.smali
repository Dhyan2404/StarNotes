.class public Lnet/sf/saxon/expr/flwor/ForClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field protected base:Lnet/sf/saxon/expr/flwor/TuplePull;

.field protected currentIteration:Lnet/sf/saxon/om/FocusIterator;

.field protected forClause:Lnet/sf/saxon/expr/flwor/ForClause;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/ForClause;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->base:Lnet/sf/saxon/expr/flwor/TuplePull;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

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

.method public getIterator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->base:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/om/FocusTrackingIterator;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/ForClausePull;->getIterator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/FocusTrackingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/ForClausePull;->variableValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/FocusIterator;->position()I

    move-result p0

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->currentIteration:Lnet/sf/saxon/om/FocusIterator;

    goto :goto_0
.end method

.method public variableValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    return-object p1
.end method
