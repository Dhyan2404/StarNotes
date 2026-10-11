.class public Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;
.super Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Series"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceChart;",
        ">.XS",
        "LFSeries<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;",
        ">;"
    }
.end annotation


# instance fields
.field private series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->this$0:Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;

    .line 2
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;-><init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    .line 3
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->this$0:Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;

    .line 5
    invoke-static {p3}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;

    move-result-object p3

    invoke-static {p4}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p4

    invoke-direct {p0, p1, p3, p4}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;-><init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    .line 6
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    return-void
.end method


# virtual methods
.method public getAxDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->getCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getCTDLBls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDPtList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Surface data series don\'t support data point settings."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getInternalSeries()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->getInternalSeries()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    move-result-object p0

    return-object p0
.end method

.method public getInternalSeries()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    return-object p0
.end method

.method public getNumDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->isSetTx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setIndex(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setOrder(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->getOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->isSetSpPr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->unsetSpPr()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_2
    :goto_0
    return-void
.end method

.method public setShowLeaderLines(Z)V
    .locals 0

    return-void
.end method
