.class public Lcom/sunia/HTREnginev2/w;
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
    .locals 6

    const/4 p0, 0x0

    .line 1
    aget-object p1, p2, p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    .line 2
    aget-object p0, p2, p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double p0, v0, v4

    if-gtz p0, :cond_1

    const-wide v0, -0x4185280d654350b8L    # -1.0E-7

    cmpl-double p0, v2, v0

    if-ltz p0, :cond_1

    .line 3
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    const/4 p2, 0x1

    :goto_0
    if-gt p2, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/x;->a(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p2}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/z0;->c(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 9

    .line 7
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    add-double v0, p0, p2

    .line 8
    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/x;->a(D)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    cmpg-double v5, p2, v0

    if-gez v5, :cond_1

    int-to-double v5, v2

    mul-double/2addr p2, v5

    sub-double v5, p0, p2

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    div-double/2addr v5, p2

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    new-array p0, v4, [Lcom/sunia/HTREnginev2/z0;

    .line 10
    invoke-static {v2}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    aput-object p1, p0, v3

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v4, [Lcom/sunia/HTREnginev2/z0;

    .line 11
    sget-object p1, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    aput-object p1, p0, v3

    return-object p0
.end method
