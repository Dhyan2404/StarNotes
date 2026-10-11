.class public Lnet/sf/saxon/expr/flwor/ForMemberClausePush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field protected destination:Lnet/sf/saxon/expr/flwor/TuplePush;

.field protected forClause:Lnet/sf/saxon/expr/flwor/ForClause;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/ForClause;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;->destination:Lnet/sf/saxon/expr/flwor/TuplePush;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

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

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;->destination:Lnet/sf/saxon/expr/flwor/TuplePush;

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

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/GroundedValue;

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v3

    invoke-interface {p1, v3, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v2

    new-instance v3, Lnet/sf/saxon/value/Int64Value;

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;->destination:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_1
    return-void
.end method
