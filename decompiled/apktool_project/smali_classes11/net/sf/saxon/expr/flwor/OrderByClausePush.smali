.class public Lnet/sf/saxon/expr/flwor/OrderByClausePush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field public final b:Lnet/sf/saxon/expr/flwor/TuplePush;

.field public final c:Lnet/sf/saxon/expr/flwor/OrderByClause;

.field public final d:Lnet/sf/saxon/expr/flwor/TupleExpression;

.field public final e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

.field public final f:Lnet/sf/saxon/expr/XPathContext;

.field public g:I

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/expr/sort/ItemToBeSorted;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/TupleExpression;Lnet/sf/saxon/expr/flwor/OrderByClause;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->g:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->h:Ljava/util/ArrayList;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->d:Lnet/sf/saxon/expr/flwor/TupleExpression;

    iput-object p4, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->c:Lnet/sf/saxon/expr/flwor/OrderByClause;

    iput-object p5, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p4}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getAtomicComparers()[Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p2

    array-length p3, p2

    new-array p3, p3, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    :goto_0
    iget-object p3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    array-length p4, p3

    if-ge p1, p4, :cond_0

    aget-object p4, p2, p1

    invoke-interface {p4, p5}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p4

    aput-object p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/flwor/OrderByClausePush;Lnet/sf/saxon/expr/sort/ItemToBeSorted;Lnet/sf/saxon/expr/sort/ItemToBeSorted;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->b(Lnet/sf/saxon/expr/sort/ItemToBeSorted;Lnet/sf/saxon/expr/sort/ItemToBeSorted;)I

    move-result p0

    return p0
.end method

.method private synthetic b(Lnet/sf/saxon/expr/sort/ItemToBeSorted;Lnet/sf/saxon/expr/sort/ItemToBeSorted;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-object v2, p1, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->sortKeyValues:[Lnet/sf/saxon/value/AtomicValue;

    aget-object v2, v2, v0

    iget-object v3, p2, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->sortKeyValues:[Lnet/sf/saxon/value/AtomicValue;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/expr/sort/AtomicComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget p0, p1, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->originalPosition:I

    iget p1, p2, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->originalPosition:I

    sub-int/2addr p0, p1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sorting without dynamic context: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/sunia/HTREnginev2/yhk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yhk;-><init>(Lnet/sf/saxon/expr/flwor/OrderByClausePush;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/sort/ItemToBeSorted;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->d:Lnet/sf/saxon/expr/flwor/TupleExpression;

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->f:Lnet/sf/saxon/expr/XPathContext;

    iget-object v1, v1, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->value:Lnet/sf/saxon/om/Item;

    check-cast v1, Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-virtual {v2, v3, v1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->setCurrentTuple(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/flwor/Tuple;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-comparable types found while sorting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "XPTY0004"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0
.end method

.method public processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->d:Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/Tuple;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->c:Lnet/sf/saxon/expr/flwor/OrderByClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/sort/ItemToBeSorted;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/sort/ItemToBeSorted;-><init>(I)V

    iput-object v0, v2, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->value:Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->sortKeyValues:[Lnet/sf/saxon/value/AtomicValue;

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->c:Lnet/sf/saxon/expr/flwor/OrderByClause;

    invoke-virtual {v4, v0, p1}, Lnet/sf/saxon/expr/flwor/OrderByClause;->evaluateSortKey(ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->g:I

    iput p1, v2, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->originalPosition:I

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePush;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
