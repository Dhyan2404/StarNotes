.class public abstract Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;
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
        "Lcom/github/mikephil/charting/charts/BarChart;",
        "Lcom/github/mikephil/charting/data/BarData;",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BAR_WIDTH:F = 0.75f


# instance fields
.field protected direction:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

.field protected drawValueAboveBar:Z

.field protected isGroupBar:Z

.field protected isStackedBar:Z


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

.method private isHorizontal()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->direction:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir;->BAR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetStackedBar(Ljava/util/List;Lcom/github/mikephil/charting/data/BarDataSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarDataSet;",
            ">;",
            "Lcom/github/mikephil/charting/data/BarDataSet;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isStackedBar()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/data/BarDataSet;

    :cond_0
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/DataSet;->getValues()Ljava/util/List;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    filled-new-array {v4, v0}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    new-array v5, v0, [I

    new-array v6, v0, [Z

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/DataSet;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BaseDataSet;->getLabel()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v7

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BaseDataSet;->getColor()I

    move-result v10

    aput v10, v5, v7

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BaseDataSet;->isDrawValuesEnabled()Z

    move-result v8

    aput-boolean v8, v6, v7

    move v8, v1

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_1

    aget-object v10, v4, v8

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v11

    aput v11, v10, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    aget-object v7, v4, v1

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/BarEntry;->setVals([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BaseDataSet;->isDrawValuesEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BaseDataSet;->getValueTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextColor(I)V

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BaseDataSet;->getValueTextSize()F

    move-result p0

    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextSize(F)V

    new-instance p0, Lorg/apache/poi/xslf/draw/formatter/StackedBarValueFormatter;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BaseDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object p2

    invoke-direct {p0, p2, v6}, Lorg/apache/poi/xslf/draw/formatter/StackedBarValueFormatter;-><init>(Lcom/github/mikephil/charting/formatter/IValueFormatter;[Z)V

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setStackLabels([Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColors([I)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private setBarChart(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setLegend(Lcom/github/mikephil/charting/components/Legend;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setMinOffset(F)V

    return-void
.end method

.method private setChartData(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->getChartData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->drawValueAboveBar:Z

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    iget-boolean p0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isGroupBar:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private setChartOffset(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->drawValueAboveBar:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isHorizontal()Z

    move-result p0

    const/high16 v1, 0x40a00000    # 5.0f

    if-eqz p0, :cond_2

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getRendererXAxis()Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getLongestLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object p0

    iget p0, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result p0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/BarEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Number;",
            ">(TN;TN;)",
            "Lcom/github/mikephil/charting/data/BarEntry;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    return-object p0
.end method

.method public bridge synthetic createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object p0

    return-object p0
.end method

.method public drawValueAboveBar(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getDlblsPos(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->OUT_END:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBarDataSet()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarDataSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->drawValueAboveBar:Z

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->seriesCount:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;->getXSLFSeries(I)Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getCTDLBls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->drawValueAboveBar:Z

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->drawValueAboveBar(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->drawValueAboveBar:Z

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValues(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getLabel(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-virtual {p0, v6, v3, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;I)V

    invoke-virtual {p0, v6, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetDrawValues(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    invoke-virtual {p0, v6, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueTextColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    invoke-virtual {p0, v6, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueTextSize(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    invoke-virtual {p0, v6, v3, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setDataSetValueFormatter(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isDelete(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->resetStackedBar(Ljava/util/List;Lcom/github/mikephil/charting/data/BarDataSet;)V

    return-object v0
.end method

.method public abstract getBarGrouping()Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;
.end method

.method public abstract getCTBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;
.end method

.method public getChart()Lcom/github/mikephil/charting/charts/BarChart;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChart()Lcom/github/mikephil/charting/charts/Chart;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->getChart()Lcom/github/mikephil/charting/charts/BarChart;

    move-result-object p0

    return-object p0
.end method

.method public getChartData()Lcom/github/mikephil/charting/data/BarData;
    .locals 6

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

    const v2, 0x3d4ccccd    # 0.05f

    goto :goto_1

    :cond_1
    int-to-float p0, v1

    const v2, 0x3e4ccccd    # 0.2f

    div-float p0, v2, p0

    move v5, v2

    move v2, p0

    move p0, v5

    :goto_1
    sub-float/2addr v3, p0

    int-to-float v1, v1

    mul-float v4, v2, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 8
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p0, v2}, Lcom/github/mikephil/charting/data/BarData;->groupBars(FFF)V

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->getGapWidth()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->getChartData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object p0

    return-object p0
.end method

.method public abstract getGapWidth()Ljava/lang/Integer;
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->getBarGrouping()Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;->PERCENT_STACKED:Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;->STACKED:Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isStackedBar:Z

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->getCTBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;->isSetVal()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->direction:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir;->COL:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->direction:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    :goto_2
    return-void
.end method

.method public isDelete(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->isSetDelete()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPercentChart()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->getBarGrouping()Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;->PERCENT_STACKED:Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStackedBar()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isStackedBar:Z

    return p0
.end method

.method public isXAxisInverted()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isHorizontal()Z

    move-result v0

    invoke-super {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->isXAxisInverted()Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setChart(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->setBarChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->setChartData(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setAxis(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->setChartOffset(Lcom/github/mikephil/charting/charts/BarChart;)V

    return-void
.end method

.method public bridge synthetic setChart(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->setChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    return-void
.end method

.method public setCustomXAXis(Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularityEnabled(Z)V

    .line 3
    iget-boolean p0, p0, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isGroupBar:Z

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setCenterAxisLabels(Z)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 6
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/components/XAxis;)V

    return-void
.end method

.method public setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->isPercentChart()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getYMax()F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularityEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;->setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/components/YAxis;)V

    return-void
.end method
