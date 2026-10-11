.class public Lcom/sunia/HTREnginev2/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/calculatorv2/ink/graphics/IStyleSheet;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sunia/calculatorv2/ink/graphics/Style;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Ljava/util/regex/Pattern;",
            "Lcom/sunia/calculatorv2/ink/graphics/Style;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sunia/HTREnginev2/i1;",
            ">;"
        }
    .end annotation
.end field

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k1;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k1;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k1;->c:Ljava/util/Map;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sunia/HTREnginev2/k1;->d:F

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "Text"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, 0x1f0000ff

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v3, "Diagram"

    invoke-virtual {p0, v3, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, 0x1f00ff00

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v4, "Table"

    invoke-virtual {p0, v4, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, 0x1fff00ff

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v5, "Listing"

    invoke-virtual {p0, v5, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v6, "text-line"

    invoke-virtual {p0, v6, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v7, "Math"

    invoke-virtual {p0, v7, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v8, "Chemical"

    invoke-virtual {p0, v8, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v9, "Drawing"

    invoke-virtual {p0, v9, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v10, "Structure"

    invoke-virtual {p0, v10, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0x7f8000

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0xffff01

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0xff0100

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0xff01

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const/high16 v1, -0x10000

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "Marking"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const/high16 v1, -0x1000000

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0x7fff80

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0xff7f80

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v8, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0xffff80

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0xff8000

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v10, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const/16 v1, -0x5b00

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "garbage"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createStrokeFillProperty(Landroid/graphics/Paint$Style;)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "glyph"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v2

    const-string v3, "canvas"

    invoke-virtual {p0, v3, v2}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v2, -0xff7f01

    invoke-static {v2}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v2

    const-string v3, "generated"

    invoke-virtual {p0, v3, v2}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v2

    const-string v3, "bounding-box"

    invoke-virtual {p0, v3, v2}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "eraser"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "hand"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const/16 v1, -0x100

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "highlighter"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createStrokeWidthProperty(F)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "placeholder"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createStrokeDashProperty([FF)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "/selector/stroke"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForPathPattern(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "/selector/prediction"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForPathPattern(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    const v1, -0x333334

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "/wet/prediction"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForPathPattern(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v1

    const-string v2, "/converted/.*/stroke"

    invoke-virtual {p0, v2, v1}, Lcom/sunia/HTREnginev2/k1;->addRuleForPathPattern(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object v0

    const-string v1, "/model/.*/math"

    invoke-virtual {p0, v1, v0}, Lcom/sunia/HTREnginev2/k1;->addRuleForPathPattern(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method


# virtual methods
.method public a(F)Lcom/sunia/HTREnginev2/i1;
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/k1;->d:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x219392ef    # 1.0E-18f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k1;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput p1, p0, Lcom/sunia/HTREnginev2/k1;->d:F

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/k1;->c:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/i1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/i1;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/i1;-><init>(FLcom/sunia/HTREnginev2/k1;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k1;->c:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/graphics/Style;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/Style;

    invoke-direct {v0}, Lcom/sunia/calculatorv2/ink/graphics/Style;-><init>()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/k1;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sunia/calculatorv2/ink/graphics/Style;->addProperty(Lcom/sunia/HTREnginev2/j1;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k1;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public addRuleForPathPattern(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v2, Lcom/sunia/calculatorv2/ink/graphics/Style;

    invoke-direct {v2}, Lcom/sunia/calculatorv2/ink/graphics/Style;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/k1;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/graphics/Style;

    invoke-virtual {p1, p2}, Lcom/sunia/calculatorv2/ink/graphics/Style;->addProperty(Lcom/sunia/HTREnginev2/j1;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k1;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sunia/HTREnginev2/i1;)Lcom/sunia/HTREnginev2/i1;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/i1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/k1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/i1;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sunia/HTREnginev2/k1;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/graphics/Style;

    new-instance v1, Lcom/sunia/HTREnginev2/i1;

    new-instance v2, Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/i1;->a()Landroid/graphics/Paint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/sunia/HTREnginev2/i1;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Lcom/sunia/HTREnginev2/k1;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->getProperties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/j1;

    invoke-interface {p2, v1}, Lcom/sunia/HTREnginev2/j1;->a(Lcom/sunia/HTREnginev2/i1;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/k1;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/calculatorv2/ink/graphics/Style;

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/Style;->getProperties()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/j1;

    invoke-interface {v2, v1}, Lcom/sunia/HTREnginev2/j1;->a(Lcom/sunia/HTREnginev2/i1;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k1;->c:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method
