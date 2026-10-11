.class public Lnet/sf/saxon/expr/sort/SortedIterator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/sort/SortedIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/sf/saxon/expr/sort/ObjectToBeSorted;",
        ">;"
    }
.end annotation


# instance fields
.field public e:[Lnet/sf/saxon/expr/sort/AtomicComparer;


# direct methods
.method public constructor <init>([Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortedIterator$a;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/expr/sort/ObjectToBeSorted;Lnet/sf/saxon/expr/sort/ObjectToBeSorted;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator$a;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

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

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    check-cast p2, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SortedIterator$a;->a(Lnet/sf/saxon/expr/sort/ObjectToBeSorted;Lnet/sf/saxon/expr/sort/ObjectToBeSorted;)I

    move-result p0

    return p0
.end method
