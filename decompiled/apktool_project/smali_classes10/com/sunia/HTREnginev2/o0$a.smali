.class public Lcom/sunia/HTREnginev2/o0$a;
.super Lcom/sunia/HTREnginev2/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/o0;->y(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/r;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/sunia/HTREnginev2/y;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->f1(Lcom/sunia/HTREnginev2/y;)Lcom/sunia/HTREnginev2/y;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/a;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->g1(Lcom/sunia/calculatorv2/ink/model/a;)Lcom/sunia/calculatorv2/ink/model/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/c;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->h1(Lcom/sunia/calculatorv2/ink/model/c;)Lcom/sunia/calculatorv2/ink/model/c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/d;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->i1(Lcom/sunia/calculatorv2/ink/model/d;)Lcom/sunia/calculatorv2/ink/model/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/e;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->b(Lcom/sunia/calculatorv2/ink/model/e;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/r;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->j1(Lcom/sunia/calculatorv2/ink/model/r;)Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/w;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->k1(Lcom/sunia/calculatorv2/ink/model/w;)Lcom/sunia/calculatorv2/ink/model/w;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/x;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$a;->b(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/e;)Lcom/sunia/calculatorv2/ink/model/e;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/e;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/e;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/e;->f()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sunia/calculatorv2/ink/model/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 3

    .line 7
    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/MathElement;

    .line 8
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;->l()Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    return-object p1
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 2

    .line 4
    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/r;->b(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/x;

    .line 5
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/x;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/x;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/sunia/calculatorv2/ink/model/x;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    return-object p1
.end method

.method public f1(Lcom/sunia/HTREnginev2/y;)Lcom/sunia/HTREnginev2/y;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public g1(Lcom/sunia/calculatorv2/ink/model/a;)Lcom/sunia/calculatorv2/ink/model/a;
    .locals 2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/g;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/a;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/a;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sunia/calculatorv2/ink/model/a;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    return-object p0
.end method

.method public h1(Lcom/sunia/calculatorv2/ink/model/c;)Lcom/sunia/calculatorv2/ink/model/c;
    .locals 6

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/g;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/c;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/c;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/c;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/c;->n()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/g;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sunia/calculatorv2/ink/model/c;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public i1(Lcom/sunia/calculatorv2/ink/model/d;)Lcom/sunia/calculatorv2/ink/model/d;
    .locals 6

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/g;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/d;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/d;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/d;->l()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/g;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sunia/calculatorv2/ink/model/d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public j1(Lcom/sunia/calculatorv2/ink/model/r;)Lcom/sunia/calculatorv2/ink/model/r;
    .locals 1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/g;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/r;->getCandidates()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public k1(Lcom/sunia/calculatorv2/ink/model/w;)Lcom/sunia/calculatorv2/ink/model/w;
    .locals 1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/g;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/w;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/w;->getCandidates()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sunia/calculatorv2/ink/model/w;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
