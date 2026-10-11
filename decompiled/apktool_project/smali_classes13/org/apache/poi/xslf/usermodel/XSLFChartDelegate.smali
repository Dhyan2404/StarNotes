.class public Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

.field private series:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
            ">;"
        }
    .end annotation
.end field

.field private seriesCount:J


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->seriesCount:J

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    return-void
.end method


# virtual methods
.method public getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    return-object p0
.end method

.method public getCategoryAxes()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfCatAxArray()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getCatAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

    invoke-direct {v5, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getChart()Lorg/apache/poi/xslf/usermodel/XSLFChart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    return-object p0
.end method

.method public getSeries()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->getCategoryAxes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->getValueAxes()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfAreaChartArray()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getAreaChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFAreaChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFAreaChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfArea3DChartArray()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getArea3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfBarChartArray()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getBarChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfBar3DChartArray()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getBar3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBar3DChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFBar3DChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFBar3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBar3DChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfDoughnutChartArray()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getDoughnutChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDoughnutChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDoughnutChart;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfLineChartArray()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getLineChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFLineChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFLineChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move v4, v3

    :goto_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfLine3DChartArray()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getLine3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFLine3DChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFLine3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    move v4, v3

    :goto_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfPieChartArray()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getPieChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5}, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    move v4, v3

    :goto_8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfPie3DChartArray()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getPie3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPie3DChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFPie3DChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5}, Lorg/apache/poi/xslf/usermodel/chart/XSLFPie3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPie3DChart;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    move v4, v3

    :goto_9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfRadarChartArray()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getRadarChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFRadarChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFRadarChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    move v4, v3

    :goto_a
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfScatterChartArray()I

    move-result v5

    if-ge v4, v5, :cond_b

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getScatterChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFScatterChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFScatterChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    move v4, v3

    :goto_b
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSurfaceChartArray()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getSurfaceChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_c
    move v4, v3

    :goto_c
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSurface3DChartArray()I

    move-result v5

    if-ge v4, v5, :cond_d

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getSurface3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface3DChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurface3DChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurface3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface3DChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    move v4, v3

    :goto_d
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfStockChartArray()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getStockChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStockChart;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v7, v8, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStockChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_e
    :goto_e
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfBubbleChartArray()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getBubbleChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xslf/usermodel/chart/XSLFBubbleChartData;

    iget-object v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v6, v7, v4, v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFBubbleChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_f
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->seriesCount:J

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->series:Ljava/util/List;

    return-object p0
.end method

.method public getSeriesCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->seriesCount:J

    return-wide v0
.end method

.method public getValueAxes()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getValAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;

    invoke-direct {v5, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
