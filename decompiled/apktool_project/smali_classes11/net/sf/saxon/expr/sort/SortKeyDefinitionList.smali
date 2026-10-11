.class public Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
.super Lnet/sf/saxon/expr/PseudoExpression;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/expr/PseudoExpression;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/expr/sort/SortKeyDefinition;",
        ">;"
    }
.end annotation


# instance fields
.field public final n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;


# direct methods
.method public constructor <init>([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/PseudoExpression;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    array-length v0, v0

    new-array v0, v0, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;-><init>([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public isLiftable(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/expr/sort/SortKeyDefinition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lnet/sf/saxon/expr/Operand;

    sget-object v6, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v5, p0, v4, v6}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->n:[Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    array-length p0, p0

    return p0
.end method
