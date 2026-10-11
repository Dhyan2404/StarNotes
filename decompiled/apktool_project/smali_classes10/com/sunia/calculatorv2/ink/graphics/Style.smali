.class public Lcom/sunia/calculatorv2/ink/graphics/Style;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/j1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/graphics/Style;->properties:Ljava/util/List;

    return-void
.end method

.method public static createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;
    .locals 1

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/Style$a;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/graphics/Style$a;-><init>(I)V

    return-object v0
.end method

.method public static createBlendModeProperty(Landroid/graphics/BlendMode;)Lcom/sunia/HTREnginev2/j1;
    .locals 1

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/Style$f;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/graphics/Style$f;-><init>(Landroid/graphics/BlendMode;)V

    return-object v0
.end method

.method public static createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;
    .locals 1

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/Style$b;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/graphics/Style$b;-><init>(I)V

    return-object v0
.end method

.method public static createStrokeDashProperty([FF)Lcom/sunia/HTREnginev2/j1;
    .locals 1

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/Style$c;

    invoke-direct {v0, p0, p1}, Lcom/sunia/calculatorv2/ink/graphics/Style$c;-><init>([FF)V

    return-object v0
.end method

.method public static createStrokeFillProperty(Landroid/graphics/Paint$Style;)Lcom/sunia/HTREnginev2/j1;
    .locals 1

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/Style$e;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/graphics/Style$e;-><init>(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public static createStrokeWidthProperty(F)Lcom/sunia/HTREnginev2/j1;
    .locals 1

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/Style$d;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/graphics/Style$d;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public addProperty(Lcom/sunia/HTREnginev2/j1;)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/graphics/Style;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/j1;

    invoke-interface {v1}, Lcom/sunia/HTREnginev2/j1;->a()Lcom/sunia/HTREnginev2/p;

    move-result-object v2

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/j1;->a()Lcom/sunia/HTREnginev2/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/graphics/Style;->properties:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/graphics/Style;->properties:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProperties()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/j1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/graphics/Style;->properties:Ljava/util/List;

    return-object p0
.end method
