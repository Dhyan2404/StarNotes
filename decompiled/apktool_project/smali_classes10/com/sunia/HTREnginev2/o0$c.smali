.class public Lcom/sunia/HTREnginev2/o0$c;
.super Lcom/sunia/HTREnginev2/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/o0;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/sunia/HTREnginev2/q;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/q;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o0$c;->b:Lcom/sunia/HTREnginev2/q;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/r;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/sunia/HTREnginev2/h1;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$c;->b(Lcom/sunia/HTREnginev2/h1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/o;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$c;->b(Lcom/sunia/HTREnginev2/o;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$c;->b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/x;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$c;->b(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/h1;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    .line 1
    return-object p1
.end method

.method public b(Lcom/sunia/HTREnginev2/o;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    .line 2
    return-object p1
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/o0$c;->b:Lcom/sunia/HTREnginev2/q;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/q;->getSolverContext()Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->l()Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/util/Alternative;

    .line 7
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->encode(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Solving old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Merger"

    invoke-static {v4, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "\\left ."

    const-string v5, " "

    .line 9
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\right ."

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\left "

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\right "

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\\\hl\\s*\\{([^{}]|\\{[^{}]*\\})*\\}"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\\\mathop\\s*\\{([^}]*)\\}"

    const-string v6, "$1"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " {2,}"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Solving: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-static {v2, v0}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->calculate(Ljava/lang/String;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 12
    new-instance v3, Lcom/sunia/HTREnginev2/f1;

    sget-object v5, Lcom/sunia/HTREnginev2/f1$a;->a:Lcom/sunia/HTREnginev2/f1$a;

    invoke-direct {v3, v5, v2}, Lcom/sunia/HTREnginev2/f1;-><init>(Lcom/sunia/HTREnginev2/f1$a;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v5, Lcom/sunia/HTREnginev2/f1;

    sget-object v6, Lcom/sunia/HTREnginev2/f1$a;->c:Lcom/sunia/HTREnginev2/f1$a;

    invoke-direct {v5, v6, v3}, Lcom/sunia/HTREnginev2/f1;-><init>(Lcom/sunia/HTREnginev2/f1$a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v3

    .line 14
    invoke-static {v4, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-static {v2, v0}, Lcom/sunia/HTREnginev2/g1;->a(Ljava/lang/String;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)Lcom/sunia/HTREnginev2/f1;

    move-result-object v3

    .line 16
    :goto_0
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/f1;->b()Lcom/sunia/HTREnginev2/f1$a;

    move-result-object v2

    sget-object v4, Lcom/sunia/HTREnginev2/f1$a;->c:Lcom/sunia/HTREnginev2/f1$a;

    if-ne v2, v4, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->c()Ljava/util/List;

    .line 18
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/o0;->x(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v2

    .line 19
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/f1;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\underline"

    const-string v5, "\\hl "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\left("

    const-string v5, "("

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\right)"

    const-string v5, ")"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a(Ljava/lang/String;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    .line 20
    new-instance v4, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v5

    invoke-direct {v4, v3, v5, v6}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 21
    new-instance v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->d()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6, v0}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    .line 22
    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/model/MathElement;->c()Ljava/util/List;

    .line 23
    invoke-static {v3}, Lcom/sunia/HTREnginev2/o0;->x(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v3

    .line 24
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 25
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v4

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v4

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v4

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v6

    const v7, 0x219392ef    # 1.0E-18f

    add-float/2addr v6, v7

    :goto_1
    div-float/2addr v4, v6

    .line 26
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v6

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v7

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    .line 27
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v2

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v5

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    .line 28
    new-instance v5, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v6

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v8

    mul-float/2addr v8, v4

    add-float/2addr v8, v6

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v2

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v3

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    invoke-direct {v5, v7, v8, v6, v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o0$c;->b:Lcom/sunia/HTREnginev2/q;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->l()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->intersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    .line 29
    new-instance v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->d()Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, v1, p1, p0, v0}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    :cond_2
    return-object v4

    .line 30
    :cond_3
    new-instance v0, Lcom/sunia/HTREnginev2/o0$c$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/o0$c$a;-><init>(Lcom/sunia/HTREnginev2/o0$c;)V

    .line 31
    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/s;->G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0

    :cond_4
    return-object p1
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    .line 3
    return-object p1
.end method
