.class public Lnet/sf/saxon/expr/oper/OperandArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/expr/Operand;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:[Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    new-array v0, v0, [Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    new-instance v2, Lnet/sf/saxon/expr/Operand;

    aget-object v3, p2, v0

    sget-object v4, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v2, p1, v3, v4}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    array-length v0, p2

    new-array v0, v0, [Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    const/4 v0, 0x0

    .line 11
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 12
    iget-object v1, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    new-instance v2, Lnet/sf/saxon/expr/Operand;

    aget-object v3, p2, v0

    invoke-direct {v2, p1, v3, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/OperandRole;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v0, p2

    new-array v0, v0, [Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    new-instance v2, Lnet/sf/saxon/expr/Operand;

    aget-object v3, p2, v0

    aget-object v4, p3, v0

    invoke-direct {v2, p1, v3, v4}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public static every([Ljava/lang/Object;Ljava/util/function/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static some([Ljava/lang/Object;Ljava/util/function/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public copy()[Lnet/sf/saxon/expr/Operand;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public getNumberOfOperands()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    array-length p0, p0

    return p0
.end method

.method public getOperand(I)Lnet/sf/saxon/expr/Operand;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getOperandExpression(I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getRoles()[Lnet/sf/saxon/expr/OperandRole;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    array-length v0, v0

    new-array v1, v0, [Lnet/sf/saxon/expr/OperandRole;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getOperandRole()Lnet/sf/saxon/expr/OperandRole;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public operandExpressions()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setOperand(ILnet/sf/saxon/expr/Expression;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/oper/OperandArray;->e:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
