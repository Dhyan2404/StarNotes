.class public Lorg/apache/poi/xslf/draw/chart/DrawBarChart;
.super Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart<",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawBarChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    return-void
.end method


# virtual methods
.method public getBarGrouping()Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    check-cast p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;->getBarGrouping()Lorg/apache/poi/xslf/usermodel/chart/BarGrouping;

    move-result-object p0

    return-object p0
.end method

.method public getCTBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    check-cast p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;->getInternalChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;

    move-result-object p0

    return-object p0
.end method

.method public getGapWidth()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    check-cast p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;->getGapWidth()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
