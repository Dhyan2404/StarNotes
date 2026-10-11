.class public Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;
.super Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart<",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFScatterChartData;",
        "Lcom/github/mikephil/charting/charts/ScatterChart;",
        "Lcom/github/mikephil/charting/data/ScatterData;",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFScatterChartData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    return-void
.end method

.method private getXValue(Ljava/lang/String;)F
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private setChartData(Lcom/github/mikephil/charting/charts/ScatterChart;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->getChartData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private setScatterChart(Lcom/github/mikephil/charting/charts/ScatterChart;)V
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Number;",
            ">(TN;TN;)",
            "Lcom/github/mikephil/charting/data/Entry;"
        }
    .end annotation

    new-instance p0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    return-object p0
.end method

.method public getCatAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCategory(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getChart()Lcom/github/mikephil/charting/charts/Chart;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->getChart()Lcom/github/mikephil/charting/charts/ScatterChart;

    move-result-object p0

    return-object p0
.end method

.method public getChart()Lcom/github/mikephil/charting/charts/ScatterChart;
    .locals 1

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/ScatterChart;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChartData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->getChartData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object p0

    return-object p0
.end method

.method public getChartData()Lcom/github/mikephil/charting/data/ScatterData;
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

    check-cast v2, Lorg/apache/poi/xslf/usermodel/chart/XSLFScatterChartData;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;->getXSLFSeries(I)Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/github/mikephil/charting/data/ScatterDataSet;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->getValues(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getLabel(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 6
    iget-object v4, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 7
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getCTDLBls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v4

    .line 8
    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->setDataSetScatterShape(Lcom/github/mikephil/charting/data/ScatterDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)V

    .line 9
    invoke-virtual {p0, v3, v2, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;I)V

    .line 10
    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetDrawValues(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 11
    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueTextColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 12
    invoke-virtual {p0, v3, v2, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueFormatter(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/data/ScatterData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getDataSetColor(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/awt/Color;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getInternalSeries()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)Ljava/awt/Color;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getValAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPloArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getValAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getValues(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getCategoryData()Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getValuesData()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->getXValue(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getXGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPloArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getValAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getYGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getYGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setChart(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->setChart(Lcom/github/mikephil/charting/charts/ScatterChart;)V

    return-void
.end method

.method public setChart(Lcom/github/mikephil/charting/charts/ScatterChart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->setScatterChart(Lcom/github/mikephil/charting/charts/ScatterChart;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->setChartData(Lcom/github/mikephil/charting/charts/ScatterChart;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setAxis(Lcom/github/mikephil/charting/charts/Chart;)V

    return-void
.end method

.method public bridge synthetic setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/components/XAxis;)V

    return-void
.end method

.method public setCustomXAXis(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    const/high16 p0, 0x3f000000    # 0.5f

    .line 3
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity(F)V

    .line 4
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    move-result p1

    add-float/2addr p1, p0

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    return-void
.end method

.method public bridge synthetic setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;->setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/components/YAxis;)V

    return-void
.end method

.method public setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    const/high16 p0, 0x3f000000    # 0.5f

    .line 3
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity(F)V

    .line 4
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getYMax()F

    move-result p1

    add-float/2addr p1, p0

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    return-void
.end method

.method public setDataSetScatterShape(Lcom/github/mikephil/charting/data/ScatterDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)V
    .locals 0

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getInternalSeries()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->getSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;->getVal()S

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShapeSize(F)V

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->getSymbol()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->X:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->TRIANGLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CHEVRON_UP:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CROSS:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showXAxis(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPloArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getValAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->showYAxis(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)Z

    move-result p0

    return p0
.end method
