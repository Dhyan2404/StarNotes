.class public Lcom/sunia/HTREnginev2/r;
.super Lcom/sunia/HTREnginev2/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/s<",
        "Lcom/sunia/calculatorv2/ink/model/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/s;-><init>()V

    return-void
.end method

.method public static synthetic A0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/t;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r;->T0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lcom/sunia/calculatorv2/ink/model/h;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->O0(Lcom/sunia/calculatorv2/ink/model/h;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C0(Lcom/sunia/HTREnginev2/h1;Ljava/util/List;)Lcom/sunia/HTREnginev2/h1;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->J0(Lcom/sunia/HTREnginev2/h1;Ljava/util/List;)Lcom/sunia/HTREnginev2/h1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/i;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r;->b1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E0(Lcom/sunia/calculatorv2/ink/model/x;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/x;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->U0(Lcom/sunia/calculatorv2/ink/model/x;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/x;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Lcom/sunia/calculatorv2/ink/model/e;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->M0(Lcom/sunia/calculatorv2/ink/model/e;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Lcom/sunia/calculatorv2/ink/model/y;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/y;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->V0(Lcom/sunia/calculatorv2/ink/model/y;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/y;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r;->a1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/r;->I0(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static synthetic J0(Lcom/sunia/HTREnginev2/h1;Ljava/util/List;)Lcom/sunia/HTREnginev2/h1;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/h1;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/b;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/h1;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic K0(Lcom/sunia/HTREnginev2/n;Ljava/util/List;)Lcom/sunia/HTREnginev2/n;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/n;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->i()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/n;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic L0(Lcom/sunia/calculatorv2/ink/model/MathElement;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/MathElement;
    .locals 7

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/z5p;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/z5p;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v3, p1, Lcom/sunia/calculatorv2/ink/model/m;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-lez v5, :cond_0

    add-int/lit8 v6, v5, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    if-nez v5, :cond_1

    return-object v4

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    new-instance p1, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-interface {v3, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lcom/sunia/HTREnginev2/r;->W0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v1

    :cond_3
    new-instance v1, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v3, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v5

    invoke-direct {v3, p1, v5, v6}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v2, v4}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    return-object v1
.end method

.method public static synthetic M0(Lcom/sunia/calculatorv2/ink/model/e;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;
    .locals 1

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/e;->i()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sunia/calculatorv2/ink/model/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic O0(Lcom/sunia/calculatorv2/ink/model/h;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 7

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fraction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    :goto_0
    move-object v4, p0

    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "partialfractiondenominator"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    move-object v3, p0

    move-object v4, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    goto :goto_0

    :goto_1
    if-nez p1, :cond_4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    if-nez v3, :cond_3

    return-object v4

    :cond_3
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sunia/calculatorv2/ink/model/p;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0

    :cond_4
    if-nez v4, :cond_6

    if-nez v3, :cond_5

    return-object p1

    :cond_5
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {p0, v0, v3, p1}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0

    :cond_6
    if-nez v3, :cond_7

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {p0, v4, v0, p1}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0

    :cond_7
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/h;

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {p0, v4, v3, p1}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0
.end method

.method public static synthetic P0(Lcom/sunia/calculatorv2/ink/model/j;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    return-object p1

    :cond_1
    instance-of v3, v1, Lcom/sunia/calculatorv2/ink/model/n;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/n;

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/j;->m()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/sunia/calculatorv2/ink/model/j;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v0

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [Lcom/sunia/calculatorv2/ink/model/f;

    aput-object p1, p0, v0

    aput-object v1, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q0(Lcom/sunia/calculatorv2/ink/model/o;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/o;->n()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/o;->o()Z

    move-result p0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1, p0}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object v0

    :cond_1
    new-instance v2, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-direct {v2, v0, p1, v1, p0}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object v2
.end method

.method public static synthetic R0(Lcom/sunia/calculatorv2/ink/model/p;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 9

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/p;->o()Z

    move-result v7

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/p;->p()Z

    move-result v8

    if-nez v2, :cond_2

    if-nez v6, :cond_0

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p1

    invoke-direct {p0, p1, v5, v7, v8}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0

    :cond_0
    if-nez v5, :cond_1

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p1

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v4

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sunia/calculatorv2/ink/model/p;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0

    :cond_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    return-object v2

    :cond_3
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0

    :cond_4
    if-nez v6, :cond_5

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-direct {p0, v2, v5, v7, v8}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/p;

    move-object v1, p0

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sunia/calculatorv2/ink/model/p;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0
.end method

.method public static synthetic S0(Lcom/sunia/calculatorv2/ink/model/q;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/q;->n()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/q;->o()Z

    move-result p0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1, p0}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object v0

    :cond_1
    new-instance v2, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-direct {v2, v0, p1, v1, p0}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object v2
.end method

.method public static synthetic T0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/t;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_1

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v6, :cond_2

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lcom/sunia/HTREnginev2/r;->I0(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v5, v3

    :cond_3
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_0

    new-instance v2, Lcom/sunia/calculatorv2/ink/model/u;

    invoke-direct {v2, v4}, Lcom/sunia/calculatorv2/ink/model/u;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v2, :cond_8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/u;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/u;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/t;

    invoke-direct {p0, v0}, Lcom/sunia/calculatorv2/ink/model/t;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static synthetic U0(Lcom/sunia/calculatorv2/ink/model/x;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/x;
    .locals 6

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/x;->getCandidates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/m5p;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/m5p;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/z5p;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/z5p;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    new-instance v2, Lcom/sunia/calculatorv2/ink/model/x;

    new-instance v3, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/x;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p1, p0, v1}, Lcom/sunia/calculatorv2/ink/model/x;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    return-object v2
.end method

.method public static synthetic V0(Lcom/sunia/calculatorv2/ink/model/y;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/y;
    .locals 4

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/y;

    new-instance v1, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/y;->getCandidates()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/model/y;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static W0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/k;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/r;->W0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public static synthetic Y0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/s;
    .locals 2

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/s;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/model/s;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    return-object v0
.end method

.method public static synthetic Z0(Lcom/sunia/calculatorv2/ink/model/y;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->h()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/v;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v1

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {v0, v1, p0}, Lcom/sunia/calculatorv2/ink/model/v;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v0

    :cond_1
    new-instance v1, Lcom/sunia/calculatorv2/ink/model/v;

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {v1, v0, p0}, Lcom/sunia/calculatorv2/ink/model/v;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v1
.end method

.method public static synthetic b1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/i;
    .locals 2

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/i;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/model/i;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    return-object v0
.end method

.method public static synthetic c1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/k;
    .locals 2

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/k;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/model/k;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    return-object v0
.end method

.method public static synthetic d1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/l;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v1

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {v0, v1, p0}, Lcom/sunia/calculatorv2/ink/model/l;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v0

    :cond_1
    new-instance v1, Lcom/sunia/calculatorv2/ink/model/l;

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {v1, v0, p0}, Lcom/sunia/calculatorv2/ink/model/l;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v1
.end method

.method public static synthetic e1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v1

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {v0, v1, p0}, Lcom/sunia/calculatorv2/ink/model/n;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lcom/sunia/calculatorv2/ink/model/n;

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {v1, v0, p0}, Lcom/sunia/calculatorv2/ink/model/n;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v1
.end method

.method public static synthetic p0(Lcom/sunia/calculatorv2/ink/model/p;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->R0(Lcom/sunia/calculatorv2/ink/model/p;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/sunia/calculatorv2/ink/model/q;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->S0(Lcom/sunia/calculatorv2/ink/model/q;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/s;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r;->Y0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/s;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lcom/sunia/HTREnginev2/n;Ljava/util/List;)Lcom/sunia/HTREnginev2/n;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->K0(Lcom/sunia/HTREnginev2/n;Ljava/util/List;)Lcom/sunia/HTREnginev2/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/k;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r;->c1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lcom/sunia/calculatorv2/ink/model/j;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->P0(Lcom/sunia/calculatorv2/ink/model/j;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r;->d1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lcom/sunia/calculatorv2/ink/model/y;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r;->Z0(Lcom/sunia/calculatorv2/ink/model/y;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lcom/sunia/calculatorv2/ink/model/MathElement;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/MathElement;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->L0(Lcom/sunia/calculatorv2/ink/model/MathElement;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/MathElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r;->e1(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(Lcom/sunia/calculatorv2/ink/model/o;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->Q0(Lcom/sunia/calculatorv2/ink/model/o;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->J(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public J(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    return-object p1
.end method

.method public final N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">(TT;",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0, v4}, Lcom/sunia/HTREnginev2/s;->G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    if-eq v5, v4, :cond_2

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v4

    const/4 v6, 0x0

    invoke-interface {v0, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v5, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object p1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method

.method public final X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">(TT;",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0, v5}, Lcom/sunia/HTREnginev2/s;->G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v7, 0x0

    if-eq v6, v5, :cond_2

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    invoke-interface {v0, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    if-eqz v6, :cond_0

    move v3, v7

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    return-object p1

    :cond_5
    if-eqz v3, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deleted: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ElementModifier"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/h0;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/HTREnginev2/h0;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/h1;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/HTREnginev2/h1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/l0;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/HTREnginev2/l0;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/m1;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/HTREnginev2/m1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/HTREnginev2/m;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/n1;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/HTREnginev2/n1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/n;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/HTREnginev2/n;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/o;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/HTREnginev2/o;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/e;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/e;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/h;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/h;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/i;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/i;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/j;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/j;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/k;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/k;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/l;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/l;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/m;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/m;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/n;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/n;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/o;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/o;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/p;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/p;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/q;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/q;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/s;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/s;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/t;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/t;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/u;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/u;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/v;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/v;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/x;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/y;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/r;->c(Lcom/sunia/calculatorv2/ink/model/y;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/e;)Lcom/sunia/calculatorv2/ink/model/e;
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/t5p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/t5p;-><init>(Lcom/sunia/calculatorv2/ink/model/e;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/e;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    :goto_0
    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/h0;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 6
    new-instance v0, Lcom/sunia/HTREnginev2/g5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/g5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/h1;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 23
    new-instance v0, Lcom/sunia/HTREnginev2/y5p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/y5p;-><init>(Lcom/sunia/HTREnginev2/h1;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/l0;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 7
    new-instance v0, Lcom/sunia/HTREnginev2/n5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/n5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/m1;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 24
    new-instance v0, Lcom/sunia/HTREnginev2/c6p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/c6p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/m;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/h5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/h5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/n1;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 25
    new-instance v0, Lcom/sunia/HTREnginev2/w5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/w5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/n;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/j5p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/j5p;-><init>(Lcom/sunia/HTREnginev2/n;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/o;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/e5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 8
    new-instance v0, Lcom/sunia/HTREnginev2/k5p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/k5p;-><init>(Lcom/sunia/calculatorv2/ink/model/MathElement;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/h;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 9
    new-instance v0, Lcom/sunia/HTREnginev2/o5p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/o5p;-><init>(Lcom/sunia/calculatorv2/ink/model/h;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/i;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 10
    new-instance v0, Lcom/sunia/HTREnginev2/v5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/v5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/j;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 11
    new-instance v0, Lcom/sunia/HTREnginev2/f6p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/f6p;-><init>(Lcom/sunia/calculatorv2/ink/model/j;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/k;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 12
    new-instance v0, Lcom/sunia/HTREnginev2/d6p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/d6p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/l;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 13
    new-instance v0, Lcom/sunia/HTREnginev2/s5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/s5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/m;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 14
    new-instance v0, Lcom/sunia/HTREnginev2/p5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/p5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/n;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 15
    new-instance v0, Lcom/sunia/HTREnginev2/r5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/r5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/o;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 16
    new-instance v0, Lcom/sunia/HTREnginev2/e6p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/e6p;-><init>(Lcom/sunia/calculatorv2/ink/model/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/p;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 17
    new-instance v0, Lcom/sunia/HTREnginev2/u5p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/u5p;-><init>(Lcom/sunia/calculatorv2/ink/model/p;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/q;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 18
    new-instance v0, Lcom/sunia/HTREnginev2/x5p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/x5p;-><init>(Lcom/sunia/calculatorv2/ink/model/q;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/s;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 20
    new-instance v0, Lcom/sunia/HTREnginev2/f5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/f5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/t;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 19
    new-instance v0, Lcom/sunia/HTREnginev2/b6p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/b6p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/u;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 21
    new-instance v0, Lcom/sunia/HTREnginev2/i5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/i5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/v;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 22
    new-instance v0, Lcom/sunia/HTREnginev2/q5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/q5p;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->X0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 26
    new-instance v0, Lcom/sunia/HTREnginev2/a6p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/a6p;-><init>(Lcom/sunia/calculatorv2/ink/model/x;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/sunia/calculatorv2/ink/model/y;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/l5p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/l5p;-><init>(Lcom/sunia/calculatorv2/ink/model/y;)V

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/r;->N0(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method
