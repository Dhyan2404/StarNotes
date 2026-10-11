.class public Lcom/sunia/HTREnginev2/t;
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

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v0, p2, p1

    .line 2
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 1

    .line 4
    array-length p0, p3

    new-array p0, p0, [Lcom/sunia/HTREnginev2/z0;

    const/4 p1, 0x0

    .line 5
    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_1

    .line 6
    aget-object v0, p3, p1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    aput-object p2, p0, p1

    goto :goto_1

    .line 8
    :cond_0
    sget-object v0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    aput-object v0, p0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
