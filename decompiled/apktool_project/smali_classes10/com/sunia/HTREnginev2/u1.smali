.class public Lcom/sunia/HTREnginev2/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/r0;


# instance fields
.field public final a:Ljava/util/function/DoubleUnaryOperator;

.field public final b:Ljava/util/function/DoubleUnaryOperator;


# direct methods
.method public constructor <init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u1;->a:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u1;->b:Ljava/util/function/DoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;[Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/u1;->a:Ljava/util/function/DoubleUnaryOperator;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/sunia/HTREnginev2/z0;

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/u1;->b:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p2

    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-object p1
.end method
