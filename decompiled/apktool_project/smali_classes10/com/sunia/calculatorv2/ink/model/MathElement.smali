.class public Lcom/sunia/calculatorv2/ink/model/MathElement;
.super Lcom/sunia/calculatorv2/ink/model/f;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/d0;
.implements Lcom/sunia/HTREnginev2/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/f<",
        "Lcom/sunia/calculatorv2/ink/model/f;",
        ">;",
        "Lcom/sunia/HTREnginev2/d0;",
        "Lcom/sunia/HTREnginev2/i;"
    }
.end annotation


# static fields
.field public static final k:Lcom/sunia/ref/jlatexmath/awt/Color;


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/sunia/ref/jlatexmath/awt/Color;

.field public i:Lcom/sunia/HTREnginev2/m0;

.field public j:Lcom/sunia/calculatorv2/ink/solver/SolverContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sunia/ref/jlatexmath/awt/Color;

    const/16 v1, 0x80

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/ref/jlatexmath/awt/Color;-><init>(III)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/model/MathElement;->k:Lcom/sunia/ref/jlatexmath/awt/Color;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            "Lcom/sunia/calculatorv2/ink/solver/SolverContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    sget-object v0, Lcom/sunia/calculatorv2/ink/model/MathElement;->k:Lcom/sunia/ref/jlatexmath/awt/Color;

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->h:Lcom/sunia/ref/jlatexmath/awt/Color;

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->f:Ljava/util/List;

    iput-object p4, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->j:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    invoke-virtual {p0, p3}, Lcom/sunia/calculatorv2/ink/model/f;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->k()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->encode(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public a(I)V
    .locals 3

    .line 2
    new-instance v0, Lcom/sunia/ref/jlatexmath/awt/Color;

    invoke-direct {v0, p1}, Lcom/sunia/ref/jlatexmath/awt/Color;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->h:Lcom/sunia/ref/jlatexmath/awt/Color;

    invoke-virtual {v1}, Lcom/sunia/ref/jlatexmath/awt/Color;->getColorInt()I

    move-result v1

    invoke-virtual {v0}, Lcom/sunia/ref/jlatexmath/awt/Color;->getColorInt()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4
    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->h:Lcom/sunia/ref/jlatexmath/awt/Color;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->i:Lcom/sunia/HTREnginev2/m0;

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Color changed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Math"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->i:Lcom/sunia/HTREnginev2/m0;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->k()V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;->c()Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/HTREnginev2/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->i:Lcom/sunia/HTREnginev2/m0;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->h:Lcom/sunia/ref/jlatexmath/awt/Color;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {p0, v1, v2, v0}, Lcom/sunia/HTREnginev2/n0;->a(Lcom/sunia/calculatorv2/ink/model/f;DLcom/sunia/ref/jlatexmath/awt/Color;)Lcom/sunia/ref/jlatexmath/Atom;

    const/4 p0, 0x0

    throw p0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->f:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->e:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "Math"

    return-object p0
.end method

.method public l()Lcom/sunia/calculatorv2/ink/solver/SolverContext;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;->j:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    return-object p0
.end method
