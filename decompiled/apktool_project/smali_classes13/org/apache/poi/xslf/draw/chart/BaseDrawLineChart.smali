.class public abstract Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;
.super Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
        ">",
        "Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart<",
        "TT;",
        "Lcom/github/mikephil/charting/charts/LineChart;",
        "Lcom/github/mikephil/charting/data/LineData;",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field protected isStackedBar:Z

.field protected stackValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->stackValues:Ljava/util/Map;

    return-void
.end method

.method private setChartData(Lcom/github/mikephil/charting/charts/LineChart;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->getChartData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private setLineChart(Lcom/github/mikephil/charting/charts/LineChart;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setLegend(Lcom/github/mikephil/charting/components/Legend;)V

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


# virtual methods
.method public createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Number;",
            ">(TN;TN;)",
            "Lcom/github/mikephil/charting/data/Entry;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->getYValue(FF)F

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic getChart()Lcom/github/mikephil/charting/charts/Chart;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->getChart()Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object p0

    return-object p0
.end method

.method public getChart()Lcom/github/mikephil/charting/charts/LineChart;
    .locals 1

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChartData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->getChartData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object p0

    return-object p0
.end method

.method public getChartData()Lcom/github/mikephil/charting/data/LineData;
    .locals 7

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget v3, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->seriesCount:I

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;->getXSLFSeries(I)Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValues(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getLabel(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 6
    iget-object v5, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 8
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 9
    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getCTDLBls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v5

    .line 10
    invoke-virtual {p0, v4, v3, v2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;I)V

    .line 11
    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetDrawValues(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 12
    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueTextColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 13
    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueFormatter(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public abstract getGrouping()Lorg/apache/poi/xslf/usermodel/chart/Grouping;
.end method

.method public getYValue(FF)F
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->isStackedBar:Z

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->stackValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr p2, v0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->stackValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->getGrouping()Lorg/apache/poi/xslf/usermodel/chart/Grouping;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/chart/Grouping;->PERCENT_STACKED:Lorg/apache/poi/xslf/usermodel/chart/Grouping;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/xslf/usermodel/chart/Grouping;->STACKED:Lorg/apache/poi/xslf/usermodel/chart/Grouping;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->isStackedBar:Z

    return-void
.end method

.method public isPercentChart()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->getGrouping()Lorg/apache/poi/xslf/usermodel/chart/Grouping;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xslf/usermodel/chart/Grouping;->PERCENT_STACKED:Lorg/apache/poi/xslf/usermodel/chart/Grouping;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic setChart(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->setChart(Lcom/github/mikephil/charting/charts/LineChart;)V

    return-void
.end method

.method public setChart(Lcom/github/mikephil/charting/charts/LineChart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->setLineChart(Lcom/github/mikephil/charting/charts/LineChart;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->setChartData(Lcom/github/mikephil/charting/charts/LineChart;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setAxis(Lcom/github/mikephil/charting/charts/Chart;)V

    return-void
.end method

.method public bridge synthetic setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/components/XAxis;)V

    return-void
.end method

.method public setCustomXAXis(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V

    const p0, -0x41333333    # -0.4f

    .line 3
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 4
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    move-result p0

    const p1, 0x3ecccccd    # 0.4f

    add-float/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    return-void
.end method

.method public bridge synthetic setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/components/YAxis;)V

    return-void
.end method

.method public setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawLineChart;->isPercentChart()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularityEnabled(Z)V

    :cond_0
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
