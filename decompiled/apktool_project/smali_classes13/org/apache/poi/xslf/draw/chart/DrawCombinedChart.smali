.class public Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;
.super Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart<",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
        "Lcom/github/mikephil/charting/charts/CombinedChart;",
        "Lcom/github/mikephil/charting/data/CombinedData;",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
            ">;"
        }
    .end annotation
.end field

.field private hasBarData:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/XSLFChart;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    iput-object p2, p0, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->dataList:Ljava/util/List;

    return-void
.end method

.method private setChartData(Lcom/github/mikephil/charting/charts/CombinedChart;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->getChartData()Lcom/github/mikephil/charting/data/CombinedData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lcom/github/mikephil/charting/data/CombinedData;)V

    return-void
.end method

.method private setCombinedChart(Lcom/github/mikephil/charting/charts/CombinedChart;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setLegend(Lcom/github/mikephil/charting/components/Legend;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getChart()Lcom/github/mikephil/charting/charts/Chart;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->getChart()Lcom/github/mikephil/charting/charts/CombinedChart;

    move-result-object p0

    return-object p0
.end method

.method public getChart()Lcom/github/mikephil/charting/charts/CombinedChart;
    .locals 1

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/CombinedChart;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChartData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->getChartData()Lcom/github/mikephil/charting/data/CombinedData;

    move-result-object p0

    return-object p0
.end method

.method public getChartData()Lcom/github/mikephil/charting/data/CombinedData;
    .locals 5

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/CombinedData;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    .line 4
    iget-object v3, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-static {v3, v2}, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->getSpecificDrawChart(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getChartData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lcom/github/mikephil/charting/data/LineData;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/CombinedData;->setData(Lcom/github/mikephil/charting/data/LineData;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v3, v2, Lcom/github/mikephil/charting/data/BarData;

    if-eqz v3, :cond_2

    .line 9
    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/CombinedData;->setData(Lcom/github/mikephil/charting/data/BarData;)V

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->hasBarData:Z

    goto :goto_0

    .line 11
    :cond_2
    instance-of v3, v2, Lcom/github/mikephil/charting/data/ScatterData;

    if-eqz v3, :cond_3

    .line 12
    check-cast v2, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/CombinedData;->setData(Lcom/github/mikephil/charting/data/ScatterData;)V

    goto :goto_0

    .line 13
    :cond_3
    instance-of v3, v2, Lcom/github/mikephil/charting/data/CandleData;

    if-eqz v3, :cond_4

    .line 14
    check-cast v2, Lcom/github/mikephil/charting/data/CandleData;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/CombinedData;->setData(Lcom/github/mikephil/charting/data/CandleData;)V

    goto :goto_0

    .line 15
    :cond_4
    instance-of v3, v2, Lcom/github/mikephil/charting/data/BubbleData;

    if-eqz v3, :cond_5

    .line 16
    check-cast v2, Lcom/github/mikephil/charting/data/BubbleData;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/CombinedData;->setData(Lcom/github/mikephil/charting/data/BubbleData;)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object v3, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Can\'t draw data:%s"

    invoke-static {v3, v4, v2}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setChart(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->setChart(Lcom/github/mikephil/charting/charts/CombinedChart;)V

    return-void
.end method

.method public setChart(Lcom/github/mikephil/charting/charts/CombinedChart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->setCombinedChart(Lcom/github/mikephil/charting/charts/CombinedChart;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->setChartData(Lcom/github/mikephil/charting/charts/CombinedChart;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setAxis(Lcom/github/mikephil/charting/charts/Chart;)V

    return-void
.end method

.method public bridge synthetic setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/components/XAxis;)V

    return-void
.end method

.method public setCustomXAXis(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V

    .line 3
    iget-boolean p0, p0, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;->hasBarData:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setCenterAxisLabels(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    :cond_0
    return-void
.end method
