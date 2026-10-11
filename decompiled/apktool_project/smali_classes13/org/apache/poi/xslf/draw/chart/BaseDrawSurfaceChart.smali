.class public abstract Lorg/apache/poi/xslf/draw/chart/BaseDrawSurfaceChart;
.super Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
        ">",
        "Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/XSLFChart;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    return-void
.end method


# virtual methods
.method public getBarGrouping()Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCTBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChartData()Lcom/github/mikephil/charting/data/BarData;
    .locals 5

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/BarData;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->getBarDataSet()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 5
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/ChartData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v1, v2, :cond_2

    .line 7
    iput-boolean v2, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isGroupBar:Z

    const/4 p0, 0x5

    if-gt v1, p0, :cond_1

    const p0, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_1
    const p0, 0x3e4ccccd    # 0.2f

    :goto_1
    sub-float/2addr v3, p0

    int-to-float v1, v1

    const/4 v2, 0x0

    mul-float v4, v1, v2

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 8
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 9
    invoke-virtual {v0, v2, p0, v2}, Lcom/github/mikephil/charting/data/BarData;->groupBars(FFF)V

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawSurfaceChart;->getGapWidth()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr p0, v1

    add-float/2addr p0, v3

    div-float/2addr v3, p0

    .line 13
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    goto :goto_3

    :cond_4
    :goto_2
    const/high16 p0, 0x3f400000    # 0.75f

    .line 14
    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    :goto_3
    return-object v0
.end method

.method public bridge synthetic getChartData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawSurfaceChart;->getChartData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object p0

    return-object p0
.end method

.method public getGapWidth()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir;->COL:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->direction:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isStackedBar:Z

    return-void
.end method
