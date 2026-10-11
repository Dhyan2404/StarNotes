.class public Lcom/sunia/HTREnginev2/s0$c;
.super Lcom/sunia/HTREnginev2/s0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/z0;

.field public final b:Lcom/sunia/HTREnginev2/r0;

.field public final c:[Lcom/sunia/HTREnginev2/s0;


# direct methods
.method public varargs constructor <init>(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/r0;[Lcom/sunia/HTREnginev2/s0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/s0;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/s0$c;->a:Lcom/sunia/HTREnginev2/z0;

    .line 4
    iput-object p2, p0, Lcom/sunia/HTREnginev2/s0$c;->b:Lcom/sunia/HTREnginev2/r0;

    .line 5
    iput-object p3, p0, Lcom/sunia/HTREnginev2/s0$c;->c:[Lcom/sunia/HTREnginev2/s0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/r0;[Lcom/sunia/HTREnginev2/s0;Lcom/sunia/HTREnginev2/s0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/s0$c;-><init>(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/r0;[Lcom/sunia/HTREnginev2/s0;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/z0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/s0$c;->a:Lcom/sunia/HTREnginev2/z0;

    return-object p0
.end method

.method public a(Lcom/sunia/HTREnginev2/z0;Ljava/util/Map;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V
    .locals 5
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

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/s0$c;->a:Lcom/sunia/HTREnginev2/z0;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/s0$c;->c:[Lcom/sunia/HTREnginev2/s0;

    array-length v0, v0

    new-array v0, v0, [Lcom/sunia/HTREnginev2/z0;

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/s0$c;->c:[Lcom/sunia/HTREnginev2/s0;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 5
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s0;->a()Lcom/sunia/HTREnginev2/z0;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/s0$c;->b:Lcom/sunia/HTREnginev2/r0;

    invoke-interface {v2, p3, p1, v0}, Lcom/sunia/HTREnginev2/r0;->a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    .line 7
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 8
    aget-object v0, p1, v1

    .line 9
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/sunia/HTREnginev2/s0$c;->c:[Lcom/sunia/HTREnginev2/s0;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p2, p3}, Lcom/sunia/HTREnginev2/s0;->a(Lcom/sunia/HTREnginev2/z0;Ljava/util/Map;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b()[Lcom/sunia/HTREnginev2/s0;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s0$c;->c:[Lcom/sunia/HTREnginev2/s0;

    return-object p0
.end method

.method public c()Lcom/sunia/HTREnginev2/r0;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s0$c;->b:Lcom/sunia/HTREnginev2/r0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/s0$c;->b:Lcom/sunia/HTREnginev2/r0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s0$c;->c:[Lcom/sunia/HTREnginev2/s0;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
