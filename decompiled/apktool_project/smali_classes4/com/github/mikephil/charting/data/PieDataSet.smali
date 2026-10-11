.class public Lcom/github/mikephil/charting/data/PieDataSet;
.super Lcom/github/mikephil/charting/data/DataSet;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/DataSet<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;"
    }
.end annotation


# instance fields
.field public f:F

.field public g:Z

.field public h:F

.field public i:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field public j:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/DataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->f:F

    const/high16 p1, 0x41900000    # 18.0f

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->h:F

    sget-object p1, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    iput-object p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->i:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    iput-object p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->j:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->k:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->l:F

    const/high16 p1, 0x42960000    # 75.0f

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->m:F

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->n:F

    const p1, 0x3ecccccd    # 0.4f

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->o:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->p:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieDataSet;->calcMinMax(Lcom/github/mikephil/charting/data/PieEntry;)V

    return-void
.end method

.method public calcMinMax(Lcom/github/mikephil/charting/data/PieEntry;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V

    return-void
.end method

.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
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

    check-cast v2, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieEntry;->copy()Lcom/github/mikephil/charting/data/PieEntry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->f:F

    iput v0, v1, Lcom/github/mikephil/charting/data/PieDataSet;->f:F

    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->h:F

    iput p0, v1, Lcom/github/mikephil/charting/data/PieDataSet;->h:F

    return-object v1
.end method

.method public getSelectionShift()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->h:F

    return p0
.end method

.method public getSliceSpace()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->f:F

    return p0
.end method

.method public getValueLineColor()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->k:I

    return p0
.end method

.method public getValueLinePart1Length()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->n:F

    return p0
.end method

.method public getValueLinePart1OffsetPercentage()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->m:F

    return p0
.end method

.method public getValueLinePart2Length()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->o:F

    return p0
.end method

.method public getValueLineWidth()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->l:F

    return p0
.end method

.method public getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->i:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object p0
.end method

.method public getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->j:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object p0
.end method

.method public isAutomaticallyDisableSliceSpacingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->g:Z

    return p0
.end method

.method public isValueLineVariableLength()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->p:Z

    return p0
.end method

.method public setAutomaticallyDisableSliceSpacing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->g:Z

    return-void
.end method

.method public setSelectionShift(F)V
    .locals 0

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->h:F

    return-void
.end method

.method public setSliceSpace(F)V
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->f:F

    return-void
.end method

.method public setValueLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->k:I

    return-void
.end method

.method public setValueLinePart1Length(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->n:F

    return-void
.end method

.method public setValueLinePart1OffsetPercentage(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->m:F

    return-void
.end method

.method public setValueLinePart2Length(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->o:F

    return-void
.end method

.method public setValueLineVariableLength(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->p:Z

    return-void
.end method

.method public setValueLineWidth(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->l:F

    return-void
.end method

.method public setXValuePosition(Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->i:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-void
.end method

.method public setYValuePosition(Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->j:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-void
.end method
