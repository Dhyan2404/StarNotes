.class public Lnet/sf/saxon/expr/flwor/OrderByClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public final b:Lnet/sf/saxon/expr/flwor/OrderByClause;

.field public final c:Lnet/sf/saxon/expr/flwor/TupleExpression;

.field public d:I

.field public final e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/expr/sort/ItemToBeSorted;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/TupleExpression;Lnet/sf/saxon/expr/flwor/OrderByClause;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->d:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->c:Lnet/sf/saxon/expr/flwor/TupleExpression;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->b:Lnet/sf/saxon/expr/flwor/OrderByClause;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getAtomicComparers()[Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p1

    array-length p2, p1

    new-array p2, p2, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    array-length v0, p3

    if-ge p2, v0, :cond_0

    aget-object v0, p1, p2

    invoke-interface {v0, p4}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v0

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/flwor/OrderByClausePull;Lnet/sf/saxon/expr/sort/ItemToBeSorted;Lnet/sf/saxon/expr/sort/ItemToBeSorted;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->b(Lnet/sf/saxon/expr/sort/ItemToBeSorted;Lnet/sf/saxon/expr/sort/ItemToBeSorted;)I

    move-result p0

    return p0
.end method

.method private synthetic b(Lnet/sf/saxon/expr/sort/ItemToBeSorted;Lnet/sf/saxon/expr/sort/ItemToBeSorted;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

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
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    return-void
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_2

    iput v2, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->d:I

    move v0, v2

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->c:Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/Tuple;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->b:Lnet/sf/saxon/expr/flwor/OrderByClause;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v4

    new-instance v5, Lnet/sf/saxon/expr/sort/ItemToBeSorted;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Lnet/sf/saxon/expr/sort/ItemToBeSorted;-><init>(I)V

    iput-object v3, v5, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->value:Lnet/sf/saxon/om/Item;

    move v3, v2

    :goto_1
    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, v5, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->sortKeyValues:[Lnet/sf/saxon/value/AtomicValue;

    iget-object v7, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->b:Lnet/sf/saxon/expr/flwor/OrderByClause;

    invoke-virtual {v7, v3, p1}, Lnet/sf/saxon/expr/flwor/OrderByClause;->evaluateSortKey(ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v7

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    iput v0, v5, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->originalPosition:I

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->f:Ljava/util/ArrayList;

    new-instance v3, Lcom/sunia/HTREnginev2/xhk;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xhk;-><init>(Lnet/sf/saxon/expr/flwor/OrderByClausePull;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-comparable types found while sorting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "XPTY0004"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    iget v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->d:I

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->c:Lnet/sf/saxon/expr/flwor/TupleExpression;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->f:Ljava/util/ArrayList;

    iget v3, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->d:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/sort/ItemToBeSorted;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->value:Lnet/sf/saxon/om/Item;

    check-cast p0, Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->setCurrentTuple(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/flwor/Tuple;)V

    return v1

    :cond_3
    return v2
.end method
