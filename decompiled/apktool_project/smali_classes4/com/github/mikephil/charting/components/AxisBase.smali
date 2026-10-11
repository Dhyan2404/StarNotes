.class public abstract Lcom/github/mikephil/charting/components/AxisBase;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public c:I

.field public d:F

.field public e:I

.field public f:Landroid/graphics/DashPathEffect;

.field public g:Landroid/graphics/DashPathEffect;

.field public mAxisMaximum:F

.field public mAxisMinimum:F

.field public mAxisRange:F

.field protected mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

.field protected mCenterAxisLabels:Z

.field public mCenteredEntries:[F

.field protected mCustomAxisMax:Z

.field protected mCustomAxisMin:Z

.field public mDecimals:I

.field protected mDrawAxisLine:Z

.field protected mDrawGridLines:Z

.field protected mDrawLabels:Z

.field protected mDrawLimitLineBehindData:Z

.field public mEntries:[F

.field public mEntryCount:I

.field protected mForceLabels:Z

.field protected mGranularity:F

.field protected mGranularityEnabled:Z

.field protected mLimitLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpaceMax:F

.field protected mSpaceMin:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->b:F

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->c:I

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->d:F

    const/4 v0, 0x0

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    const/4 v2, 0x6

    iput v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->e:I

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenterAxisLabels:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->f:Landroid/graphics/DashPathEffect;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->g:Landroid/graphics/DashPathEffect;

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLimitLineBehindData:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x6

    if-le p0, p1, :cond_0

    const-string p0, "MPAndroiChart"

    const-string p1, "Warning! You have more than 6 LimitLines on your axis, do you really want that?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public calculate(FF)V
    .locals 2

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    sub-float/2addr p1, v0

    :goto_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    add-float/2addr p2, v0

    :goto_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    :cond_2
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iput p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public disableAxisLineDashedLine()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->f:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public disableGridDashedLine()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->g:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public enableAxisLineDashedLine(FFF)V
    .locals 3

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->f:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public enableGridDashedLine(FFF)V
    .locals 3

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->g:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public getAxisLineColor()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->c:I

    return p0
.end method

.method public getAxisLineDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->f:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public getAxisLineWidth()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->d:F

    return p0
.end method

.method public getAxisMaximum()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    return p0
.end method

.method public getAxisMinimum()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    return p0
.end method

.method public getFormattedLabel(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget p1, v1, p1

    invoke-interface {v0, p1, p0}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getGranularity()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    return p0
.end method

.method public getGridColor()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->a:I

    return p0
.end method

.method public getGridDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->g:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public getGridLineWidth()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->b:F

    return p0
.end method

.method public getLabelCount()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->e:I

    return p0
.end method

.method public getLimitLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    return-object p0
.end method

.method public getLongestLabel()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSpaceMax()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    return p0
.end method

.method public getSpaceMin()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    return p0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;->getDecimalDigits()I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    :cond_1
    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    return-object p0
.end method

.method public isAxisLineDashedLineEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->f:Landroid/graphics/DashPathEffect;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isAxisMaxCustom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    return p0
.end method

.method public isAxisMinCustom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    return p0
.end method

.method public isCenterAxisLabelsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenterAxisLabels:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDrawAxisLineEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    return p0
.end method

.method public isDrawGridLinesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    return p0
.end method

.method public isDrawLabelsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    return p0
.end method

.method public isDrawLimitLinesBehindDataEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLimitLineBehindData:Z

    return p0
.end method

.method public isForceLabelsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    return p0
.end method

.method public isGranularityEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return p0
.end method

.method public isGridDashedLineEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->g:Landroid/graphics/DashPathEffect;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public removeAllLimitLines()V
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetAxisMaximum()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    return-void
.end method

.method public resetAxisMinimum()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    return-void
.end method

.method public setAxisLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->c:I

    return-void
.end method

.method public setAxisLineDashedLine(Landroid/graphics/DashPathEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->f:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public setAxisLineWidth(F)V
    .locals 0

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->d:F

    return-void
.end method

.method public setAxisMaxValue(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    return-void
.end method

.method public setAxisMaximum(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public setAxisMinValue(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    return-void
.end method

.method public setAxisMinimum(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public setCenterAxisLabels(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenterAxisLabels:Z

    return-void
.end method

.method public setDrawAxisLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    return-void
.end method

.method public setDrawGridLines(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    return-void
.end method

.method public setDrawLabels(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    return-void
.end method

.method public setDrawLimitLinesBehindData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLimitLineBehindData:Z

    return-void
.end method

.method public setGranularity(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return-void
.end method

.method public setGranularityEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return-void
.end method

.method public setGridColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->a:I

    return-void
.end method

.method public setGridDashedLine(Landroid/graphics/DashPathEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->g:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public setGridLineWidth(F)V
    .locals 0

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->b:F

    return-void
.end method

.method public setLabelCount(I)V
    .locals 1

    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->e:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    return-void
.end method

.method public setLabelCount(IZ)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    .line 4
    iput-boolean p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    return-void
.end method

.method public setSpaceMax(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    return-void
.end method

.method public setSpaceMin(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    invoke-direct {p1, v0}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    :goto_0
    return-void
.end method
