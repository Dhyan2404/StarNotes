.class public Lcom/github/mikephil/charting/data/LineDataSet;
.super Lcom/github/mikephil/charting/data/LineRadarDataSet;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/LineDataSet$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineRadarDataSet<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;"
    }
.end annotation


# instance fields
.field public j:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:Landroid/graphics/DashPathEffect;

.field public q:Lcom/github/mikephil/charting/formatter/IFillFormatter;

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    sget-object p1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->j:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    const/4 p2, -0x1

    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->l:I

    const/high16 p2, 0x41000000    # 8.0f

    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->m:F

    const/high16 p2, 0x40800000    # 4.0f

    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->n:F

    const p2, 0x3e4ccccd    # 0.2f

    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->o:F

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->p:Landroid/graphics/DashPathEffect;

    new-instance p1, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {p1}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->q:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->r:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->s:Z

    iget-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    const/16 p1, 0xea

    const/16 p2, 0xff

    const/16 v0, 0x8c

    invoke-static {v0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->copy()Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->j:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->j:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->m:F

    iput v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->m:F

    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->n:F

    iput v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->n:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->p:Landroid/graphics/DashPathEffect;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->p:Landroid/graphics/DashPathEffect;

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->r:Z

    iput-boolean v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->r:Z

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->s:Z

    iput-boolean v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->s:Z

    iget p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    iput p0, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    return-object v1
.end method

.method public disableDashedLine()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->p:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public enableDashedLine(FFF)V
    .locals 3

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->p:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public getCircleColor(I)I
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCircleColorCount()I
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getCircleColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    return-object p0
.end method

.method public getCircleHoleColor()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->l:I

    return p0
.end method

.method public getCircleHoleRadius()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->n:F

    return p0
.end method

.method public getCircleRadius()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->m:F

    return p0
.end method

.method public getCircleSize()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleRadius()F

    move-result p0

    return p0
.end method

.method public getCubicIntensity()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->o:F

    return p0
.end method

.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->p:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public getFillFormatter()Lcom/github/mikephil/charting/formatter/IFillFormatter;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->q:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    return-object p0
.end method

.method public getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->j:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    return-object p0
.end method

.method public isDashedLineEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->p:Landroid/graphics/DashPathEffect;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isDrawCircleHoleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->s:Z

    return p0
.end method

.method public isDrawCirclesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->r:Z

    return p0
.end method

.method public isDrawCubicEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->j:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    sget-object v0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDrawSteppedEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->j:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    sget-object v0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->STEPPED:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetCircleColors()V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/LineDataSet;->resetCircleColors()V

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCircleColorHole(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->l:I

    return-void
.end method

.method public setCircleColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    return-void
.end method

.method public varargs setCircleColors([I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    return-void
.end method

.method public setCircleColors([ILandroid/content/Context;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->k:Ljava/util/List;

    return-void
.end method

.method public setCircleHoleRadius(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->n:F

    goto :goto_0

    :cond_0
    const-string p0, "LineDataSet"

    const-string p1, "Circle radius cannot be < 0.5"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCircleRadius(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->m:F

    goto :goto_0

    :cond_0
    const-string p0, "LineDataSet"

    const-string p1, "Circle radius cannot be < 1"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCircleSize(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    return-void
.end method

.method public setCubicIntensity(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->o:F

    return-void
.end method

.method public setDrawCircleHole(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->s:Z

    return-void
.end method

.method public setDrawCircles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->r:Z

    return-void
.end method

.method public setFillFormatter(Lcom/github/mikephil/charting/formatter/IFillFormatter;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {p1}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->q:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->q:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    :goto_0
    return-void
.end method

.method public setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->j:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    return-void
.end method
