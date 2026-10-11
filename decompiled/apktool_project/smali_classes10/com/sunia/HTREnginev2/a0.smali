.class public Lcom/sunia/HTREnginev2/a0;
.super Lcom/sunia/HTREnginev2/k;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Lcom/sunia/HTREnginev2/s1;

.field public final g:F

.field public final h:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sunia/HTREnginev2/s1;FLcom/sunia/calculatorv2/ink/graphics/BoundBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a0;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/a0;->f:Lcom/sunia/HTREnginev2/s1;

    iput p3, p0, Lcom/sunia/HTREnginev2/a0;->g:F

    iput-object p4, p0, Lcom/sunia/HTREnginev2/a0;->h:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/sunia/HTREnginev2/a0;->h:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0
.end method

.method public a(Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V
    .locals 4

    .line 1
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0;->f:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/a0;->f:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    iget v3, p0, Lcom/sunia/HTREnginev2/a0;->g:F

    div-float/2addr p1, v3

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget p1, p0, Lcom/sunia/HTREnginev2/a0;->g:F

    invoke-virtual {p3, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 7
    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 8
    iget-object p0, p0, Lcom/sunia/HTREnginev2/a0;->e:Ljava/lang/String;

    invoke-virtual {p2, p0, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "glyph"

    return-object p0
.end method
