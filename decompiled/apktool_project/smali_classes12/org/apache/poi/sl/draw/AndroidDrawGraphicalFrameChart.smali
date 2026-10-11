.class public Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/DrawGraphicalFrameChart;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidDrawGraphicalFrameChart"


# instance fields
.field private anchor:Ljava/awt/geom/Rectangle2D;

.field private chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

.field private delegate:Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawCombinedChart(Ljava/awt/Graphics2D;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {v0, v1, p2}, Lorg/apache/poi/xslf/draw/chart/DrawCombinedChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Ljava/util/List;)V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0, p1, p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method private drawSpecialChart(Ljava/awt/Graphics2D;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-static {v0, p2}, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->getSpecificDrawChart(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p2, p1, p0}, Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;->draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    :cond_0
    return-void
.end method

.method public static getSpecificDrawChart(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)Lorg/apache/poi/xslf/draw/chart/AbstractDrawChart;
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFLineChartData;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawLineChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFLineChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawLineChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFLineChartData;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFLine3DChartData;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawLine3DChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFLine3DChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawLine3DChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFLine3DChartData;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawPieChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawPieChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFPieChartData;)V

    return-object v0

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFPie3DChartData;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawPie3DChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFPie3DChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawPie3DChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFPie3DChartData;)V

    return-object v0

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawBarChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawBarChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFBarChartData;)V

    return-object v0

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFBar3DChartData;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawBar3DChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFBar3DChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawBar3DChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFBar3DChartData;)V

    return-object v0

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFAreaChartData;

    if-eqz v0, :cond_6

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawAreaChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFAreaChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawAreaChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFAreaChartData;)V

    return-object v0

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawArea3DChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawArea3DChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFArea3DChartData;)V

    return-object v0

    :cond_7
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFScatterChartData;

    if-eqz v0, :cond_8

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFScatterChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawScatterChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFScatterChartData;)V

    return-object v0

    :cond_8
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;

    if-eqz v0, :cond_9

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawStockChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFStockChartData;)V

    return-object v0

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFBubbleChartData;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawBubbleChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFBubbleChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawBubbleChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFBubbleChartData;)V

    return-object v0

    :cond_a
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFRadarChartData;

    if-eqz v0, :cond_b

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFRadarChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawRadarChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFRadarChartData;)V

    return-object v0

    :cond_b
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawDoughnutChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawDoughnutChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFDoughnutChartData;)V

    return-object v0

    :cond_c
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;

    if-eqz v0, :cond_d

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawSurfaceChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawSurfaceChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFSurfaceChartData;)V

    return-object v0

    :cond_d
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurface3DChartData;

    if-eqz v0, :cond_e

    new-instance v0, Lorg/apache/poi/xslf/draw/chart/DrawSurface3DChart;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFSurface3DChartData;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/chart/DrawSurface3DChart;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/poi/xslf/usermodel/chart/XSLFSurface3DChartData;)V

    return-object v0

    :cond_e
    sget-object p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t draw data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public canDraw(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;)Z"
        }
    .end annotation

    instance-of p0, p1, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    return p0
.end method

.method public draw(Lorg/apache/poi/sl/usermodel/GraphicalFrame;Ljava/awt/Graphics2D;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;",
            "Ljava/awt/Graphics2D;",
            ")V"
        }
    .end annotation

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    invoke-static {p2, p1}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-static {v0}, Lcom/onyx/common/util/RectUtils;->isNullOrEmpty(Ljava/awt/geom/RectangularShape;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->TAG:Ljava/lang/String;

    const-string p1, "anchor is empty"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getChart()Lorg/apache/poi/xslf/usermodel/XSLFChart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->chart:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    if-nez p1, :cond_1

    sget-object p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->TAG:Ljava/lang/String;

    const-string p1, "chart is null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->delegate:Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFChartDelegate;->getSeries()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p0, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->TAG:Ljava/lang/String;

    const-string p1, "No char data"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->drawCombinedChart(Ljava/awt/Graphics2D;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/sl/draw/AndroidDrawGraphicalFrameChart;->drawSpecialChart(Ljava/awt/Graphics2D;Lorg/apache/poi/xslf/usermodel/chart/XSLFChartData;)V

    :goto_0
    return-void
.end method
