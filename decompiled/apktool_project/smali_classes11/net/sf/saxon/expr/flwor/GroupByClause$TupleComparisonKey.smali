.class public Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/flwor/GroupByClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TupleComparisonKey"
.end annotation


# instance fields
.field public final a:[Lnet/sf/saxon/om/Sequence;

.field public final b:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;


# direct methods
.method public constructor <init>([Lnet/sf/saxon/om/Sequence;[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->a:[Lnet/sf/saxon/om/Sequence;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->b:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->a:[Lnet/sf/saxon/om/Sequence;

    array-length v0, v0

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;

    iget-object v2, v2, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->a:[Lnet/sf/saxon/om/Sequence;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->a:[Lnet/sf/saxon/om/Sequence;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    :try_start_0
    aget-object v2, v2, v0

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;

    iget-object v3, v3, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->a:[Lnet/sf/saxon/om/Sequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->b:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v1}, Lnet/sf/saxon/functions/DeepEqual;->deepEqual(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z

    move-result v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->a:[Lnet/sf/saxon/om/Sequence;

    array-length v0, v0

    const v1, 0x77557755

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->a:[Lnet/sf/saxon/om/Sequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->b:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v3

    :try_start_0
    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;->a:[Lnet/sf/saxon/om/Sequence;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/value/AtomicValue;

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, v1

    xor-int/2addr v0, v5

    goto :goto_1

    :catch_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
