.class public abstract Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;
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
        "Lcom/github/mikephil/charting/charts/PieChart;",
        "Lcom/github/mikephil/charting/data/PieData;",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        ">;"
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

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    return-void
.end method

.method private getDataSetColors(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getDPtList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/common/util/CollectionUtils;->isNonBlank(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)Ljava/awt/Color;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private setChartData(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->getChartData()Lcom/github/mikephil/charting/data/PieData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/PieEntry;

    move-result-object p0

    return-object p0
.end method

.method public createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/PieEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Number;",
            ">(TN;TN;)",
            "Lcom/github/mikephil/charting/data/PieEntry;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getChart()Lcom/github/mikephil/charting/charts/Chart;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->getChart()Lcom/github/mikephil/charting/charts/PieChart;

    move-result-object p0

    return-object p0
.end method

.method public getChart()Lcom/github/mikephil/charting/charts/PieChart;
    .locals 1

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/PieChart;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChartData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->getChartData()Lcom/github/mikephil/charting/data/PieData;

    move-result-object p0

    return-object p0
.end method

.method public getChartData()Lcom/github/mikephil/charting/data/PieData;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;->getXSLFSeries(I)Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getCTDLBls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/github/mikephil/charting/data/PieDataSet;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValues(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getLabel(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 7
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setSelectionShift(F)V

    .line 8
    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetDrawValues(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 9
    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueTextColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 10
    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueFormatter(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 11
    invoke-virtual {p0, v2, v0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->setDataSetColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)V

    .line 12
    new-instance p0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {p0, v2}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    return-object p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setChart(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->setChart(Lcom/github/mikephil/charting/charts/PieChart;)V

    return-void
.end method

.method public setChart(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->setPieChart(Lcom/github/mikephil/charting/charts/PieChart;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->setChartData(Lcom/github/mikephil/charting/charts/PieChart;)V

    return-void
.end method

.method public setDataSetColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/BaseDataSet<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;->getDataSetColors(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColors(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setPieChart(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setLegend(Lcom/github/mikephil/charting/components/Legend;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawEntryLabels(Z)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawSlicesUnderHole(Z)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    return-void
.end method
