.class public abstract Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
        "C:",
        "Lcom/github/mikephil/charting/charts/Chart;",
        "D:",
        "Lcom/github/mikephil/charting/data/ChartData;",
        "E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final AXIS_EXTRA_OFFSET:F = 0.4f

.field protected static final AXIS_TEXT_SIZE:F = 10.0f

.field protected static final CHART_OFFSET_10:F = 10.0f

.field protected static final CHART_OFFSET_12:F = 12.0f

.field protected static final CHART_OFFSET_16:F = 16.0f

.field protected static final CHART_OFFSET_5:F = 5.0f

.field protected static final CIRCLE_RADIUS:F = 2.0f

.field protected static final DEFAULT_LABEL_COUNT:I = 0x6

.field protected static final LEGEND_FORM_LINE_SIZE:F = 12.0f

.field protected static final LEGEND_FORM_LINE_WIDTH:F = 1.4f

.field protected static final LEGEND_FORM_SIZE:F = 4.0f

.field protected static final LEGEND_TEXT_SIZE:F = 10.0f

.field protected static final LINE_WIDTH:F = 1.0f


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected accent2:Ljava/awt/Color;

.field protected anchor:Ljava/awt/geom/Rectangle2D;

.field protected chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

.field protected chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected seriesCount:I

.field protected sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field protected yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/XSLFChart;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    iput-object p2, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->getSeriesCount()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->seriesCount:I

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getYAxisDependency(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->init()V

    return-void
.end method

.method private drawChartBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPaint(Lorg/apache/xmlbeans/XmlObject;)Ljava/awt/Paint;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    return-void
.end method

.method private drawChartContentBackground(Ljava/awt/Graphics2D;Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "TC;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPloArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPaint(Lorg/apache/xmlbeans/XmlObject;)Ljava/awt/Paint;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getViewPortContentRect(Lcom/github/mikephil/charting/charts/Chart;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object p2

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-double v2, v1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-double v6, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-double v8, p0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    return-void
.end method

.method private getXAxisPosition(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;)Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos;->R:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    if-eq p1, v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos;->T:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    if-ne p0, p1, :cond_1

    :cond_0
    sget-object p0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object p0

    :cond_1
    sget-object p0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object p0
.end method

.method private getYAxisDependency(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos;->R:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    if-eq p1, v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos;->B:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    if-ne p0, p1, :cond_1

    :cond_0
    sget-object p0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object p0

    :cond_1
    sget-object p0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object p0
.end method

.method private setAxisTextSizeAndColor(Lcom/github/mikephil/charting/components/AxisBase;FLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
    .locals 1

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result v0

    if-lez v0, :cond_1

    div-int/lit8 v0, v0, 0x64

    int-to-float p2, v0

    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V

    :goto_0
    invoke-virtual {p0, p3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Ljava/awt/Color;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V

    return-void
.end method

.method private setChartViewPort(Lcom/github/mikephil/charting/charts/Chart;Ljava/awt/geom/Rectangle2D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/awt/geom/Rectangle2D;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setChartDimens(FF)V

    return-void
.end method


# virtual methods
.method public abstract createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Number;",
            ">(TN;TN;)TE;"
        }
    .end annotation
.end method

.method public draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->seriesCount:I

    if-gtz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "No Series"

    invoke-static {p0, p2, p1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p2, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getChart()Lcom/github/mikephil/charting/charts/Chart;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setChartViewPort(Lcom/github/mikephil/charting/charts/Chart;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setChart(Lcom/github/mikephil/charting/charts/Chart;)V

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->drawAndroidChart(Ljava/awt/Graphics2D;Lcom/github/mikephil/charting/charts/Chart;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public drawAndroidChart(Ljava/awt/Graphics2D;Lcom/github/mikephil/charting/charts/Chart;Ljava/awt/geom/Rectangle2D;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "TC;",
            "Ljava/awt/geom/Rectangle2D;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    add-double/2addr v4, v2

    double-to-int v1, v4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->drawChartBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->drawChartContentBackground(Ljava/awt/Graphics2D;Lcom/github/mikephil/charting/charts/Chart;)V

    new-instance p0, Lcom/trans/android/AndroidImage;

    invoke-direct {p0, v0}, Lcom/trans/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p2, p3}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-static {v0}, Lcom/onyx/common/util/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public drawBoundary(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object p0

    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    return-void
.end method

.method public drawValues(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getShowVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    if-eqz p0, :cond_0

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

.method public getAccent2Color()Ljava/awt/Color;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->accent2:Ljava/awt/Color;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->getClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFColorDelegate;->getAccentColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;I)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->accent2:Ljava/awt/Color;

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->accent2:Ljava/awt/Color;

    return-object p0
.end method

.method public getAccent2Color(I)Ljava/awt/Color;
    .locals 3

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getAccent2Color()Ljava/awt/Color;

    move-result-object v0

    .line 6
    iget p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->seriesCount:I

    const/4 v1, 0x6

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p0, v1, p0

    int-to-float p1, p1

    mul-float/2addr p1, p0

    sub-float/2addr v1, p1

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr v1, p0

    float-to-int p0, v1

    .line 7
    invoke-virtual {v0}, Ljava/awt/Color;->getRed()I

    move-result p1

    .line 8
    invoke-virtual {v0}, Ljava/awt/Color;->getGreen()I

    move-result v1

    .line 9
    invoke-virtual {v0}, Ljava/awt/Color;->getBlue()I

    move-result v0

    .line 10
    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, p1, v1, v0, p0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v2
.end method

.method public getCatAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPloArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfCatAxArray()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getCatAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCategory(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;
    .locals 4
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getCategoryData()Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->isXAxisInverted()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public abstract getChart()Lcom/github/mikephil/charting/charts/Chart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract getChartData()Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)Ljava/awt/Color;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColorDelegate;->getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Ljava/awt/Color;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColorDelegate;->getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/onyx/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getDataSetColor(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/awt/Color;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)Ljava/awt/Color;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDateAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPloArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfDateAxArray()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getDateAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDlblsPos(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->isSetDLblPos()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getDLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLblPos;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLblPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGridlineColor(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)Ljava/awt/Color;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)Ljava/awt/Color;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLabel(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;->getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->getStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->getPtList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public getPaint(Lorg/apache/xmlbeans/XmlObject;)Ljava/awt/Paint;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;

    iget-object v1, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/xmlbeans/XmlObject;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->getPaint()Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getPloArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    return-object p0
.end method

.method public getValAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;
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

    :goto_0
    return-object p0
.end method

.method public getValueFormatter(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Lcom/github/mikephil/charting/formatter/IValueFormatter;
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getValuesData()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getFormatCode()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/xslf/draw/formatter/FormatType;->from(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->create(Lorg/apache/poi/xslf/draw/formatter/FormatType;)Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;

    move-result-object p0

    return-object p0
.end method

.method public getValueTextColor(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Ljava/awt/Color;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValueTextSize(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)F
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result p0

    if-lez p0, :cond_0

    div-int/lit8 p0, p0, 0x64

    int-to-float p0, p0

    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x41200000    # 10.0f

    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result p0

    return p0
.end method

.method public getValues(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getValuesData()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->isXAxisInverted()Z

    move-result v4

    if-eqz v4, :cond_0

    sub-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->createEntry(Ljava/lang/Number;Ljava/lang/Number;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getViewPortContentRect(Lcom/github/mikephil/charting/charts/Chart;)Landroid/graphics/RectF;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getXAxisValueFormatter(Ljava/util/List;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;",
            ")",
            "Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/draw/formatter/FormatType;->from(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    sget-object p0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->DATE:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/formatter/FormatType;->setFormat(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getCategoryData()Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getFormatCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/draw/formatter/FormatType;->from(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-static {p1, p0}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->create(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;

    move-result-object p0

    return-object p0
.end method

.method public getXGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getCatAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;)Lcom/github/mikephil/charting/components/YAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/github/mikephil/charting/components/YAxis;"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/github/mikephil/charting/charts/RadarChart;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getYAxisRight(Lcom/github/mikephil/charting/charts/Chart;)Lcom/github/mikephil/charting/components/YAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/github/mikephil/charting/components/YAxis;"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getYAxisValueFormatter(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/draw/formatter/FormatType;->from(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getValuesData()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getFormatCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/draw/formatter/FormatType;->from(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->create(Lorg/apache/poi/xslf/draw/formatter/FormatType;)Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;

    move-result-object p0

    return-object p0
.end method

.method public getYGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract init()V
.end method

.method public isXAxisInverted()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->yAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isYAxisInverted(Lcom/github/mikephil/charting/charts/Chart;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object p0

    sget-object p1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setAxis(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/mikephil/charting/charts/PieChart;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getXGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getYGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setXAxis(Lcom/github/mikephil/charting/charts/Chart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getYAxisRight(Lcom/github/mikephil/charting/charts/Chart;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setYAxisRight(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V

    return-void
.end method

.method public abstract setChart(Lcom/github/mikephil/charting/charts/Chart;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/github/mikephil/charting/components/XAxis;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularityEnabled(Z)V

    return-void
.end method

.method public setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/github/mikephil/charting/components/YAxis;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getYMax()F

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularityEnabled(Z)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    :goto_0
    return-void
.end method

.method public setCustomYAxisRight(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/github/mikephil/charting/components/YAxis;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setDataSetColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/BaseDataSet<",
            "TE;>;",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getDataSetColor(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/awt/Color;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getAccent2Color(I)Ljava/awt/Color;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    :cond_1
    return-void
.end method

.method public setDataSetDrawValues(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/BaseDataSet<",
            "TE;>;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->drawValues(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    return-void
.end method

.method public setDataSetValueFormatter(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/BaseDataSet<",
            "TE;>;",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValueFormatter(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    return-void
.end method

.method public setDataSetValueTextColor(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/BaseDataSet<",
            "TE;>;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValueTextColor(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)Ljava/awt/Color;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextColor(I)V

    :cond_0
    return-void
.end method

.method public setDataSetValueTextSize(Lcom/github/mikephil/charting/data/BaseDataSet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/BaseDataSet<",
            "TE;>;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValueTextSize(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextSize(F)V

    return-void
.end method

.method public setLegend(Lcom/github/mikephil/charting/components/Legend;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getLegend()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setLegendForm(Lcom/github/mikephil/charting/components/Legend;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setLegendTextSizeAndTextColor(Lcom/github/mikephil/charting/components/Legend;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLegendPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_4

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    sget-object p0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    :goto_0
    return-void
.end method

.method public setLegendForm(Lcom/github/mikephil/charting/components/Legend;)V
    .locals 0

    const/high16 p0, 0x40800000    # 4.0f

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/Legend;->setFormSize(F)V

    return-void
.end method

.method public setLegendTextSizeAndTextColor(Lcom/github/mikephil/charting/components/Legend;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;)V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result v0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result v1

    if-lez v1, :cond_2

    div-int/lit8 v1, v1, 0x64

    int-to-float v0, v1

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V

    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Ljava/awt/Color;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-static {p1, v0}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V

    return-void

    :cond_5
    :goto_2
    invoke-static {p1, v0}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V

    return-void
.end method

.method public setXAxis(Lcom/github/mikephil/charting/charts/Chart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getCatAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object p3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getDateAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;->getXSLFSeries(I)Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getCategory(Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v4

    invoke-virtual {p0, p3, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->showXAxis(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    if-eqz p2, :cond_1

    move v2, v5

    :cond_1
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    invoke-direct {p0, p3}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getXAxisPosition(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;)Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getGridlineColor(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)Ljava/awt/Color;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisLineColor(I)V

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x6

    if-le p2, v2, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    :cond_3
    invoke-virtual {p0, v3, p3, v0, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getXAxisValueFormatter(Ljava/util/List;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    invoke-virtual {p0, v4, p3, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setXAxisTextSizeAndColor(Lcom/github/mikephil/charting/components/XAxis;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;)V

    invoke-virtual {p0, p1, v4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setCustomXAXis(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/XAxis;)V

    return-void
.end method

.method public setXAxisTextSizeAndColor(Lcom/github/mikephil/charting/components/XAxis;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;)V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result v0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setAxisTextSizeAndColor(Lcom/github/mikephil/charting/components/AxisBase;FLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    return-void
.end method

.method public setYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/github/mikephil/charting/components/YAxis;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->chartData:Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;->getXSLFSeries(I)Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getValAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->showYAxis(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    invoke-virtual {p2, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->isYAxisInverted(Lcom/github/mikephil/charting/charts/Chart;)Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setInverted(Z)V

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    if-eqz p4, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    invoke-virtual {p0, v2, v0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getYAxisValueFormatter(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData$XSLFSeries;)Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getGridlineColor(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)Ljava/awt/Color;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/awt/Color;->getRGB()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisLineColor(I)V

    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setYAxisTextSizeAndColor(Lcom/github/mikephil/charting/components/YAxis;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setCustomYAxisLeft(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V

    return-void
.end method

.method public setYAxisRight(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/github/mikephil/charting/components/YAxis;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setCustomYAxisRight(Lcom/github/mikephil/charting/charts/Chart;Lcom/github/mikephil/charting/components/YAxis;)V

    return-void
.end method

.method public setYAxisTextSizeAndColor(Lcom/github/mikephil/charting/components/YAxis;)V
    .locals 3

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->getPloArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getValAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->setAxisTextSizeAndColor(Lcom/github/mikephil/charting/components/AxisBase;FLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1, v0}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V

    return-void
.end method

.method public showXAxis(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0

    :cond_2
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;->getTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    if-eq p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move p0, v0

    :cond_5
    :goto_1
    return p0
.end method

.method public showYAxis(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)Z
    .locals 0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    if-eq p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
