.class public abstract Lcom/sunia/HTREnginev2/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/s0$b;,
        Lcom/sunia/HTREnginev2/s0$d;,
        Lcom/sunia/HTREnginev2/s0$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/s0$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/s0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/s0$b;-><init>(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/s0$a;)V

    return-object v0
.end method

.method public static a(I)Lcom/sunia/HTREnginev2/s0$d;
    .locals 2

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/s0$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/s0$d;-><init>(ILcom/sunia/HTREnginev2/s0$a;)V

    return-object v0
.end method

.method public static varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/r0;[Lcom/sunia/HTREnginev2/s0;)Lcom/sunia/HTREnginev2/s0;
    .locals 5

    .line 3
    array-length v0, p2

    new-array v0, v0, [Lcom/sunia/HTREnginev2/z0;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 5
    aget-object v2, p2, v1

    .line 6
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/s0;->a()Lcom/sunia/HTREnginev2/z0;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, p1, Lcom/sunia/HTREnginev2/t;

    if-nez v4, :cond_0

    .line 8
    new-instance p0, Lcom/sunia/HTREnginev2/s0$c;

    sget-object v0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    invoke-direct {p0, v0, p1, p2, v3}, Lcom/sunia/HTREnginev2/s0$c;-><init>(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/r0;[Lcom/sunia/HTREnginev2/s0;Lcom/sunia/HTREnginev2/s0$a;)V

    return-object p0

    .line 9
    :cond_0
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Lcom/sunia/HTREnginev2/s0$c;

    invoke-interface {p1, p0, v0}, Lcom/sunia/HTREnginev2/r0;->a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;[Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/sunia/HTREnginev2/s0$c;-><init>(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/r0;[Lcom/sunia/HTREnginev2/s0;Lcom/sunia/HTREnginev2/s0$a;)V

    return-object v1
.end method

.method public static b(Lcom/sunia/HTREnginev2/r0;)Lcom/sunia/HTREnginev2/s0;
    .locals 4

    new-instance v0, Lcom/sunia/HTREnginev2/s0$c;

    sget-object v1, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sunia/HTREnginev2/s0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sunia/HTREnginev2/s0$c;-><init>(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/r0;[Lcom/sunia/HTREnginev2/s0;Lcom/sunia/HTREnginev2/s0$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/sunia/HTREnginev2/z0;
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/z0;Ljava/util/Map;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/z0;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sunia/HTREnginev2/z0;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/solver/SolverContext;",
            ")V"
        }
    .end annotation
.end method
