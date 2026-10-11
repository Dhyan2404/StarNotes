.class public Lcom/sunia/HTREnginev2/p0;
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

    .line 1
    array-length p0, p2

    const/4 p1, 0x1

    if-gt p0, p1, :cond_0

    .line 2
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    .line 4
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 5
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/z0;->c(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 7

    .line 6
    array-length p0, p3

    new-array p0, p0, [Lcom/sunia/HTREnginev2/z0;

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 7
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 8
    aget-object v2, p3, v0

    .line 9
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p2, v2}, Lcom/sunia/HTREnginev2/z0;->b(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 11
    sget-object v1, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->a()Lcom/sunia/HTREnginev2/z0;

    move-result-object v2

    int-to-long v3, v1

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Lcom/sunia/HTREnginev2/z0;->a(JJ)Lcom/sunia/HTREnginev2/z0;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sunia/HTREnginev2/z0;->d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object v1

    .line 13
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->h()I

    move-result p2

    if-ltz p2, :cond_3

    move-object p2, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/z0;->g()Lcom/sunia/HTREnginev2/z0;

    move-result-object p2

    :goto_2
    move v2, p1

    .line 14
    :goto_3
    array-length v3, p3

    if-ge v2, v3, :cond_6

    .line 15
    aget-object v3, p3, v2

    .line 16
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    .line 17
    aput-object p2, p0, v2

    move v0, p1

    goto :goto_4

    .line 18
    :cond_4
    aput-object v1, p0, v2

    goto :goto_4

    .line 19
    :cond_5
    sget-object v3, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    aput-object v3, p0, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-object p0
.end method
