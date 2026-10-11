.class public Lcom/sunia/HTREnginev2/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/r0;


# instance fields
.field public final a:Ljava/util/function/DoubleUnaryOperator;

.field public final b:Ljava/util/function/DoubleUnaryOperator;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t1;->a:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/t1;->b:Ljava/util/function/DoubleUnaryOperator;

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/t1;->c:Z

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;[Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isDegree()Z

    move-result p2

    const-wide v2, 0x4066800000000000L    # 180.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/sunia/HTREnginev2/t1;->c:Z

    if-nez p2, :cond_0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/t1;->a:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {p2, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isDegree()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/t1;->c:Z

    if-eqz p0, :cond_1

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    .line 5
    :cond_1
    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 5

    .line 6
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p2

    .line 7
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isDegree()Z

    move-result v0

    const-wide v1, 0x4066800000000000L    # 180.0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/t1;->c:Z

    if-eqz v0, :cond_0

    mul-double/2addr p2, v3

    div-double/2addr p2, v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/t1;->b:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v0, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p2

    .line 9
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isDegree()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/t1;->c:Z

    if-nez p0, :cond_1

    mul-double/2addr p2, v1

    div-double/2addr p2, v3

    :cond_1
    const/4 p0, 0x1

    new-array p0, p0, [Lcom/sunia/HTREnginev2/z0;

    .line 10
    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-object p0
.end method
