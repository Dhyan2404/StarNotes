.class public Lcom/sunia/HTREnginev2/a;
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
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->d:Lcom/sunia/HTREnginev2/z0;

    .line 2
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 3
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 4

    .line 4
    array-length p0, p3

    new-array p0, p0, [Lcom/sunia/HTREnginev2/z0;

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 5
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 6
    aget-object v2, p3, v0

    .line 7
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p2, v2}, Lcom/sunia/HTREnginev2/z0;->e(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sunia/HTREnginev2/z0;->b(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p2

    .line 10
    :goto_2
    array-length v0, p3

    if-ge p1, v0, :cond_3

    .line 11
    aget-object v0, p3, p1

    .line 12
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    aput-object p2, p0, p1

    goto :goto_3

    .line 14
    :cond_2
    sget-object v0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    aput-object v0, p0, p1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-object p0
.end method
