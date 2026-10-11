.class public Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;
.super Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart<",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFRadarChartData;",
        "Lcom/github/mikephil/charting/charts/RadarChart;",
        "Lcom/github/mikephil/charting/data/RadarData;",
        "Lcom/github/mikephil/charting/data/RadarEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFRadarChartData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    return-void
.end method

.method private setChartData(Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;->getChartData()Lcom/github/mikephil/charting/data/RadarData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private setRadarChart(Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setLegend(Lcom/github/mikephil/charting/components/Legend;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/RadarChart;->setWebLineWidth(F)V

    const v0, -0x333334

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/RadarChart;->setWebColor(I)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/RadarChart;->setWebColorInner(I)V

    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/RadarChart;->setWebLineWidthInner(F)V

    const/high16 p0, 0x40a00000    # 5.0f

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setMinOffset(F)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;->createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/RadarEntry;

    move-result-object p0

    return-object p0
.end method

.method public createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/RadarEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Number;",
            ">(TN;TN;)",
            "Lcom/github/mikephil/charting/data/RadarEntry;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/RadarEntry;-><init>(F)V

    return-object p0
.end method

.method public bridge synthetic getChart()Lcom/github/mikephil/charting/charts/Chart;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;->getChart()Lcom/github/mikephil/charting/charts/RadarChart;

    move-result-object p0

    return-object p0
.end method

.method public getChart()Lcom/github/mikephil/charting/charts/RadarChart;
    .locals 1

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/RadarChart;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChartData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;->getChartData()Lcom/github/mikephil/charting/data/RadarData;

    move-result-object p0

    return-object p0
.end method

.method public getChartData()Lcom/github/mikephil/charting/data/RadarData;
    .locals 6

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->seriesCount:I

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    check-cast v2, Lorg/apache/poi/xslf/usermodel/chart/XSLFRadarChartData;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;->getXSLFSeries(I)Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/github/mikephil/charting/data/RadarDataSet;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValues(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getLabel(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/RadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 6
    iget-object v4, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 7
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getCTDLBls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v4

    .line 8
    invoke-virtual {p0, v3, v2, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;I)V

    .line 9
    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetDrawValues(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 10
    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueTextColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 11
    invoke-virtual {p0, v3, v2, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueFormatter(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lcom/github/mikephil/charting/data/RadarData;

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/data/RadarData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic getViewPortContentRect(Lcom/github/mikephil/charting/charts/Chart;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;->getViewPortContentRect(Lcom/github/mikephil/charting/charts/RadarChart;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getViewPortContentRect(Lcom/github/mikephil/charting/charts/RadarChart;)Landroid/graphics/RectF;
    .locals 4

    .line 2
    invoke-super {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getViewPortContentRect(Lcom/github/mikephil/charting/charts/Chart;)Landroid/graphics/RectF;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    add-float/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, v0, p1

    sub-float v3, p0, p1

    add-float/2addr v0, p1

    add-float/2addr p0, p1

    invoke-direct {v1, v2, v3, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setChart(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;->setChart(Lcom/github/mikephil/charting/charts/RadarChart;)V

    return-void
.end method

.method public setChart(Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;->setRadarChart(Lcom/github/mikephil/charting/charts/RadarChart;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;->setChartData(Lcom/github/mikephil/charting/charts/RadarChart;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setAxis(Lcom/github/mikephil/charting/charts/Chart;)V

    return-void
.end method

.method public setLegendForm(Lcom/github/mikephil/charting/components/Legend;)V
    .locals 0

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    const p0, 0x3fb33333    # 1.4f

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setFormLineWidth(F)V

    const/high16 p0, 0x41400000    # 12.0f

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setFormSize(F)V

    return-void
.end method
