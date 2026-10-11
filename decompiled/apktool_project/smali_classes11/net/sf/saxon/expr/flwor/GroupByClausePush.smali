.class public Lnet/sf/saxon/expr/flwor/GroupByClausePush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field public final b:Lnet/sf/saxon/expr/flwor/TuplePush;

.field public final c:Lnet/sf/saxon/expr/flwor/GroupByClause;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lnet/sf/saxon/expr/XPathContext;

.field public final f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/GroupByClause;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->d:Ljava/util/HashMap;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->c:Lnet/sf/saxon/expr/flwor/GroupByClause;

    iput-object p4, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->e:Lnet/sf/saxon/expr/XPathContext;

    iget-object p1, p3, Lnet/sf/saxon/expr/flwor/GroupByClause;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    array-length p1, p1

    new-array p1, p1, [Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    iget-object v0, p3, Lnet/sf/saxon/expr/flwor/GroupByClause;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addToGroup(Ljava/lang/Object;Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static checkGroupingValues([Lnet/sf/saxon/om/Sequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    instance-of v3, v2, Lnet/sf/saxon/value/EmptySequence;

    if-nez v3, :cond_1

    instance-of v3, v2, Lnet/sf/saxon/value/AtomicValue;

    if-nez v3, :cond_1

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    invoke-static {v2, v0}, Lnet/sf/saxon/expr/Atomizer;->getAtomizingIterator(Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/Sequence;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    aput-object v2, p0, v1

    goto :goto_1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Grouping key value cannot be a sequence of more than one item"

    const-string v1, "XPTY0004"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->c:Lnet/sf/saxon/expr/flwor/GroupByClause;

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->e:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v2, v1, v3}, Lnet/sf/saxon/expr/flwor/GroupByClause;->processGroup(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->e:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void
.end method

.method public processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->c:Lnet/sf/saxon/expr/flwor/GroupByClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getGroupingTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->c:Lnet/sf/saxon/expr/flwor/GroupByClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getRetainedTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;

    invoke-direct {v2}, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;-><init>()V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/Tuple;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/Tuple;->getMembers()[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->checkGroupingValues([Lnet/sf/saxon/om/Sequence;)V

    new-instance v3, Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-direct {v3, v0}, Lnet/sf/saxon/expr/flwor/Tuple;-><init>([Lnet/sf/saxon/om/Sequence;)V

    iput-object v3, v2, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;->groupingValues:Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/Tuple;

    move-result-object p1

    iput-object p1, v2, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;->retainedValues:Lnet/sf/saxon/expr/flwor/Tuple;

    iget-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->c:Lnet/sf/saxon/expr/flwor/GroupByClause;

    iget-object v0, v2, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;->groupingValues:Lnet/sf/saxon/expr/flwor/Tuple;

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getComparisonKey(Lnet/sf/saxon/expr/flwor/Tuple;[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;)Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->d:Ljava/util/HashMap;

    invoke-static {p1, v2, v0, p0}, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->addToGroup(Ljava/lang/Object;Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method
