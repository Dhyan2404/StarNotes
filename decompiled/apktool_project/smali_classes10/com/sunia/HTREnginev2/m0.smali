.class public Lcom/sunia/HTREnginev2/m0;
.super Lcom/sunia/HTREnginev2/k;
.source "SourceFile"


# instance fields
.field public final e:Lcom/sunia/ref/jlatexmath/Box;

.field public final f:Lcom/sunia/HTREnginev2/s1;

.field public final g:F

.field public final h:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;


# direct methods
.method public constructor <init>(Lcom/sunia/ref/jlatexmath/Box;Lcom/sunia/HTREnginev2/s1;FLcom/sunia/calculatorv2/ink/graphics/BoundBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m0;->e:Lcom/sunia/ref/jlatexmath/Box;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/m0;->f:Lcom/sunia/HTREnginev2/s1;

    iput p3, p0, Lcom/sunia/HTREnginev2/m0;->g:F

    iput-object p4, p0, Lcom/sunia/HTREnginev2/m0;->h:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Equation scale: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "math"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/sunia/HTREnginev2/m0;->h:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0
.end method

.method public a(Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result p3

    .line 2
    new-instance v0, Lcom/sunia/ref/jlatexmath/awt/AndroidGraphics2D;

    invoke-direct {v0}, Lcom/sunia/ref/jlatexmath/awt/AndroidGraphics2D;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/sunia/ref/jlatexmath/awt/AndroidGraphics2D;->setCanvas(Landroid/graphics/Canvas;)V

    .line 4
    new-instance v1, Lcom/sunia/ref/jlatexmath/awt/Color;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sunia/ref/jlatexmath/awt/Color;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sunia/ref/jlatexmath/awt/AndroidGraphics2D;->setColor(Lcom/sunia/ref/jlatexmath/awt/Color;)V

    .line 5
    iget-object p1, p0, Lcom/sunia/HTREnginev2/m0;->f:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result p1

    float-to-double v1, p1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/m0;->f:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sunia/ref/jlatexmath/awt/AndroidGraphics2D;->translate(DD)V

    .line 6
    iget p1, p0, Lcom/sunia/HTREnginev2/m0;->g:F

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/sunia/ref/jlatexmath/awt/AndroidGraphics2D;->scale(DD)V

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object p0, p0, Lcom/sunia/HTREnginev2/m0;->e:Lcom/sunia/ref/jlatexmath/Box;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/sunia/ref/jlatexmath/Box;->draw(Lcom/sunia/ref/jlatexmath/awt/Graphics2D;FFLjava/util/Map;)V

    .line 9
    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "math"

    return-object p0
.end method

.method public d()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/m0;->g:F

    return p0
.end method
