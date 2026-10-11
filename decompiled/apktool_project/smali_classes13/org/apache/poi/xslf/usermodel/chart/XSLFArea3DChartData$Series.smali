.class public Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;
.super Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Series"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;",
        ">.XS",
        "LFSeries<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;",
        ">;"
    }
.end annotation


# instance fields
.field private series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->this$0:Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;

    .line 2
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;-><init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    .line 3
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->this$0:Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;

    .line 5
    invoke-static {p3}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;

    move-result-object p3

    invoke-static {p4}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p4

    invoke-direct {p0, p1, p3, p4}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;-><init>(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    .line 6
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    return-void
.end method


# virtual methods
.method public getAxDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getCTDLBls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    return-object p0
.end method

.method public getDPtList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getDPtList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getInternalSeries()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->getInternalSeries()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    move-result-object p0

    return-object p0
.end method

.method public getInternalSeries()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    return-object p0
.end method

.method public getNumDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->isSetTx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setIndex(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setOrder(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->isSetSpPr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->unsetSpPr()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_2
    :goto_0
    return-void
.end method

.method public setShowLeaderLines(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->isSetDLbls()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->addNewDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->isSetShowLeaderLines()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->addNewShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :goto_0
    return-void
.end method
