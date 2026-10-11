.class public Lnet/sf/saxon/expr/flwor/GroupByClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public final b:Lnet/sf/saxon/expr/flwor/GroupByClause;

.field public c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/GroupByClause;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->b:Lnet/sf/saxon/expr/flwor/GroupByClause;

    iget-object p1, p2, Lnet/sf/saxon/expr/flwor/GroupByClause;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    array-length p1, p1

    new-array p1, p1, [Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->d:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->d:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    iget-object v1, p2, Lnet/sf/saxon/expr/flwor/GroupByClause;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    aget-object v1, v1, p1

    invoke-virtual {v1, p3}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->c:Ljava/util/Iterator;

    return-void
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->c:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->b:Lnet/sf/saxon/expr/flwor/GroupByClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getGroupingTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->b:Lnet/sf/saxon/expr/flwor/GroupByClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getRetainedTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;

    invoke-direct {v3}, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;-><init>()V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/Tuple;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/Tuple;->getMembers()[Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->checkGroupingValues([Lnet/sf/saxon/om/Sequence;)V

    new-instance v5, Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-direct {v5, v4}, Lnet/sf/saxon/expr/flwor/Tuple;-><init>([Lnet/sf/saxon/om/Sequence;)V

    iput-object v5, v3, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;->groupingValues:Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/Tuple;

    move-result-object v4

    iput-object v4, v3, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;->retainedValues:Lnet/sf/saxon/expr/flwor/Tuple;

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->b:Lnet/sf/saxon/expr/flwor/GroupByClause;

    iget-object v5, v3, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;->groupingValues:Lnet/sf/saxon/expr/flwor/Tuple;

    iget-object v6, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->d:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getComparisonKey(Lnet/sf/saxon/expr/flwor/Tuple;[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;)Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v4, v3, v5, v2}, Lnet/sf/saxon/expr/flwor/GroupByClausePush;->addToGroup(Ljava/lang/Object;Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->c:Ljava/util/Iterator;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;->b:Lnet/sf/saxon/expr/flwor/GroupByClause;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/flwor/GroupByClause;->processGroup(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
