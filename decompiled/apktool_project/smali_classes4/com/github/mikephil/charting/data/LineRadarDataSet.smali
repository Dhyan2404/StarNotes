.class public abstract Lcom/github/mikephil/charting/data/LineRadarDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<",
        "TT;>;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public f:I

.field public g:I

.field public h:F

.field public i:Z

.field protected mFillDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 p1, 0xea

    const/16 p2, 0xff

    const/16 v0, 0x8c

    invoke-static {v0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->f:I

    const/16 p1, 0x55

    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->g:I

    const/high16 p1, 0x40200000    # 2.5f

    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->h:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->i:Z

    return-void
.end method


# virtual methods
.method public getFillAlpha()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->g:I

    return p0
.end method

.method public getFillColor()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->f:I

    return p0
.end method

.method public getFillDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLineWidth()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->h:F

    return p0
.end method

.method public isDrawFilledEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->i:Z

    return p0
.end method

.method public setDrawFilled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->i:Z

    return-void
.end method

.method public setFillAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->g:I

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->f:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFillDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLineWidth(F)V
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->h:F

    return-void
.end method
