.class public Lorg/apache/poi/xslf/draw/chart/DrawDoughnutChart;
.super Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart<",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/BaseDrawPieChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    return-void
.end method


# virtual methods
.method public setPieChart(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setLegend(Lcom/github/mikephil/charting/components/Legend;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    check-cast p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;->getHoleSize()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawEntryLabels(Z)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawSlicesUnderHole(Z)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    const/high16 p0, 0x40a00000    # 5.0f

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setMinOffset(F)V

    return-void
.end method
