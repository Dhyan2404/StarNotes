.class public Lorg/apache/poi/xslf/draw/chart/DrawStockChart;
.super Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart<",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;",
        "Lcom/github/mikephil/charting/charts/CandleStickChart;",
        "Lcom/github/mikephil/charting/data/CandleData;",
        "Lcom/github/mikephil/charting/data/CandleEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final BAR_SPACE:F = 0.475f


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    return-void
.end method

.method private setCandleStickChart(Lcom/github/mikephil/charting/charts/CandleStickChart;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->setLegend(Lcom/github/mikephil/charting/components/Legend;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    const/high16 p0, 0x40a00000    # 5.0f

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setMinOffset(F)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    return-void
.end method

.method private setChartData(Lcom/github/mikephil/charting/charts/CandleStickChart;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->getChartData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/CandleEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Number;",
            ">(TN;TN;)",
            "Lcom/github/mikephil/charting/data/CandleEntry;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/CandleEntry;

    move-result-object p0

    return-object p0
.end method

.method public getChart()Lcom/github/mikephil/charting/charts/CandleStickChart;
    .locals 1

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/CandleStickChart;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChart()Lcom/github/mikephil/charting/charts/Chart;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->getChart()Lcom/github/mikephil/charting/charts/CandleStickChart;

    move-result-object p0

    return-object p0
.end method

.method public getChartData()Lcom/github/mikephil/charting/data/CandleData;
    .locals 13

    .line 2
    iget v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->seriesCount:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->TAG:Ljava/lang/String;

    const-string v0, "Stock chart series count is not \'3\'"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    check-cast v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->getSeries(I)Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getCategoryData()Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v0

    .line 5
    filled-new-array {v0, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_2

    .line 6
    iget-object v5, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    check-cast v5, Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;

    invoke-virtual {v5, v4}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;->getXSLFSeries(I)Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getValuesData()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object v5

    move v6, v1

    :goto_1
    if-ge v6, v0, :cond_1

    .line 8
    aget-object v7, v3, v6

    invoke-interface {v5, v6}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v0, :cond_3

    .line 10
    new-instance v12, Lcom/github/mikephil/charting/data/CandleEntry;

    int-to-float v7, v4

    aget-object v6, v3, v4

    aget v8, v6, v1

    aget v9, v6, v5

    const/4 v5, 0x2

    aget v11, v6, v5

    move-object v6, v12

    move v10, v11

    invoke-direct/range {v6 .. v11}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(FFFFF)V

    .line 11
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 12
    :cond_3
    new-instance v0, Lcom/github/mikephil/charting/data/CandleDataSet;

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const p0, -0xbbbbbc

    .line 14
    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowColor(I)V

    const/high16 p0, -0x10000

    .line 15
    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDecreasingColor(I)V

    .line 16
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDecreasingPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/CandleDataSet;->setIncreasingPaintStyle(Landroid/graphics/Paint$Style;)V

    const p0, -0xffff01

    .line 18
    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/CandleDataSet;->setNeutralColor(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 19
    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowWidth(F)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    const p0, 0x3ef33333    # 0.475f

    .line 21
    invoke-static {v0, p0}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setBarSpace(Lcom/github/mikephil/charting/data/CandleDataSet;F)V

    .line 22
    new-instance p0, Lcom/github/mikephil/charting/data/CandleData;

    new-array v2, v5, [Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    aput-object v0, v2, v1

    invoke-direct {p0, v2}, Lcom/github/mikephil/charting/data/CandleData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    return-object p0
.end method

.method public bridge synthetic getChartData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->getChartData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public setChart(Lcom/github/mikephil/charting/charts/CandleStickChart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->setCandleStickChart(Lcom/github/mikephil/charting/charts/CandleStickChart;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->setChartData(Lcom/github/mikephil/charting/charts/CandleStickChart;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setAxis(Lcom/github/mikephil/charting/charts/Chart;)V

    return-void
.end method

.method public bridge synthetic setChart(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->setChart(Lcom/github/mikephil/charting/charts/CandleStickChart;)V

    return-void
.end method

.method public setCustomXAXis(Lcom/github/mikephil/charting/charts/CandleStickChart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V

    const p0, -0x41333333    # -0.4f

    .line 3
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 4
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/CandleData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    move-result p0

    const p1, 0x3ecccccd    # 0.4f

    add-float/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    return-void
.end method

.method public bridge synthetic setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/CandleStickChart;Lcom/github/mikephil/charting/components/XAxis;)V

    return-void
.end method

.method public setLegend(Lcom/github/mikephil/charting/components/Legend;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    return-void
.end method
