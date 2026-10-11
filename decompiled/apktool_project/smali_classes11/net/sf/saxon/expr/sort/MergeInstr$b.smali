.class public Lnet/sf/saxon/expr/sort/MergeInstr$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/expr/sort/MergeInstr;->getComparer(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;[Lnet/sf/saxon/expr/sort/AtomicComparer;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/sf/saxon/value/ObjectValue<",
        "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

.field public final synthetic f:[Lnet/sf/saxon/expr/sort/AtomicComparer;

.field public final synthetic g:Lnet/sf/saxon/expr/sort/MergeInstr;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;[Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$b;->g:Lnet/sf/saxon/expr/sort/MergeInstr;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$b;->e:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    iput-object p3, p0, Lnet/sf/saxon/expr/sort/MergeInstr$b;->f:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/value/ObjectValue;Lnet/sf/saxon/value/ObjectValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;",
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    invoke-virtual {p2}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$b;->e:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$b;->f:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    aget-object v2, v2, v1

    iget-object v3, p1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/AtomicValue;

    iget-object v4, p2, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v2, v3, v4}, Lnet/sf/saxon/expr/sort/AtomicComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/sf/saxon/value/ObjectValue;

    check-cast p2, Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr$b;->a(Lnet/sf/saxon/value/ObjectValue;Lnet/sf/saxon/value/ObjectValue;)I

    move-result p0

    return p0
.end method
