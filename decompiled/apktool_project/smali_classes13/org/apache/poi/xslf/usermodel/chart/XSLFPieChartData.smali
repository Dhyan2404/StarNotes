.class public Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;
.super Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData$Series;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;",
        ">;"
    }
.end annotation


# instance fields
.field private chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;)V
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->getSerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData$Series;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v3

    invoke-direct {v1, p0, p2, v2, v3}, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData$Series;-><init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstSliceAngle()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetFirstSliceAng()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->getFirstSliceAng()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;->getVal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getInternalChart()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->getInternalChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    move-result-object p0

    return-object p0
.end method

.method public getInternalChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    return-object p0
.end method

.method public removeCTSeries(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->removeSer(I)V

    return-void
.end method

.method public setFirstSliceAngle(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetFirstSliceAng()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->unsetFirstSliceAng()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v0, 0x168

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetFirstSliceAng()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->getFirstSliceAng()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;->setVal(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->addNewFirstSliceAng()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;->setVal(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Value of angle must be between 0 and 360, both inclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVaryColors(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetVaryColors()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->unsetVaryColors()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetVaryColors()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->getVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method
