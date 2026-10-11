.class public Lcom/sunia/HTREnginev2/x0;
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
    .locals 0

    const/4 p0, 0x0

    .line 1
    aget-object p0, p2, p0

    const/4 p1, 0x1

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/z0;->d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 8

    const/4 p0, 0x0

    .line 2
    aget-object p1, p3, p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 3
    aget-object p1, p3, v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [Lcom/sunia/HTREnginev2/z0;

    aput-object p2, p1, p0

    .line 4
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    aput-object p0, p1, v1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->h()I

    move-result p1

    if-gez p1, :cond_2

    .line 6
    aget-object p1, p3, v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    aget-object p1, p3, v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    rem-long/2addr v2, v4

    const-wide/16 v6, 0x1

    cmp-long p1, v2, v6

    if-nez p1, :cond_1

    aget-object p1, p3, v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    rem-long/2addr v2, v4

    cmp-long p1, v2, v6

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->g()Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    sget-object p2, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    aget-object p3, p3, v1

    invoke-virtual {p2, p3}, Lcom/sunia/HTREnginev2/z0;->b(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/z0;->d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->g()Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Lcom/sunia/HTREnginev2/z0;->b(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sunia/HTREnginev2/z0;->d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    :goto_0
    new-array p2, v0, [Lcom/sunia/HTREnginev2/z0;

    aput-object p1, p2, p0

    .line 10
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    aput-object p0, p2, v1

    return-object p2

    :cond_3
    new-array p1, v0, [Lcom/sunia/HTREnginev2/z0;

    .line 11
    sget-object v0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    aput-object v0, p1, p0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    aget-object p0, p3, p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    div-double/2addr v2, p2

    invoke-static {v2, v3}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    aput-object p0, p1, v1

    return-object p1
.end method
