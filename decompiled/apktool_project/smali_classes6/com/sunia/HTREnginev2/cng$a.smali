.class public Lcom/sunia/HTREnginev2/cng$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/bng;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/cng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFFFFF)Lcom/sunia/HTREnginev2/fng;
    .locals 6

    const/4 v5, 0x1

    move v0, p4

    move v1, p6

    move v2, p2

    move v3, p3

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sunia/HTREnginev2/knn;->o(FFFFFZ)F

    move-result v0

    div-float p1, v0, p4

    div-float p2, v0, p6

    mul-float p4, p5, p1

    mul-float p6, p7, p2

    new-instance p7, Lcom/sunia/HTREnginev2/fng;

    move-object p0, p7

    move p3, v0

    move p5, v0

    invoke-direct/range {p0 .. p6}, Lcom/sunia/HTREnginev2/fng;-><init>(FFFFFF)V

    return-object p7
.end method

.method public b(Lcom/sunia/HTREnginev2/fng;)Z
    .locals 0

    iget p0, p1, Lcom/sunia/HTREnginev2/fng;->d:F

    iget p1, p1, Lcom/sunia/HTREnginev2/fng;->f:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Landroid/graphics/RectF;FLcom/sunia/HTREnginev2/fng;)V
    .locals 0

    iget p0, p3, Lcom/sunia/HTREnginev2/fng;->f:F

    iget p3, p3, Lcom/sunia/HTREnginev2/fng;->d:F

    sub-float/2addr p0, p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget p3, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p2

    sub-float/2addr p3, p0

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
