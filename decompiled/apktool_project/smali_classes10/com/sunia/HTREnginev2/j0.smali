.class public Lcom/sunia/HTREnginev2/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/r0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;[Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 2

    const/4 p0, 0x0

    .line 1
    aget-object p0, p2, p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 2

    const/4 p0, 0x0

    .line 2
    aget-object p1, p3, p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    aget-object p1, p3, v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [Lcom/sunia/HTREnginev2/z0;

    .line 4
    sget-object p3, Lcom/sunia/HTREnginev2/z0;->f:Lcom/sunia/HTREnginev2/z0;

    invoke-virtual {p3, p2}, Lcom/sunia/HTREnginev2/z0;->d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p2

    aput-object p2, p1, p0

    aput-object p3, p1, v1

    return-object p1

    :cond_0
    new-array p1, v0, [Lcom/sunia/HTREnginev2/z0;

    .line 5
    aget-object p3, p3, v1

    invoke-virtual {p3, p2}, Lcom/sunia/HTREnginev2/z0;->d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p2

    aput-object p2, p1, p0

    sget-object p0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    aput-object p0, p1, v1

    return-object p1

    :cond_1
    new-array p1, v0, [Lcom/sunia/HTREnginev2/z0;

    .line 6
    sget-object v0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    aput-object v0, p1, p0

    aget-object p0, p3, p0

    sget-object p3, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    invoke-virtual {p3, p2}, Lcom/sunia/HTREnginev2/z0;->b(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/z0;->d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    aput-object p0, p1, v1

    return-object p1
.end method
