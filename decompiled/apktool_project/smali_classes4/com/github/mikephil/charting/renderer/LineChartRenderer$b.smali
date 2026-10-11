.class public Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/graphics/Path;

.field public b:[Landroid/graphics/Bitmap;

.field public final synthetic c:Lcom/github/mikephil/charting/renderer/LineChartRenderer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->c:Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->a:Landroid/graphics/Path;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;Lcom/github/mikephil/charting/renderer/LineChartRenderer$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;-><init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;ZZ)V
    .locals 9

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleColorCount()I

    move-result v0

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    move-result v1

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleRadius()F

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    float-to-double v5, v1

    const-wide v7, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->b:[Landroid/graphics/Bitmap;

    aput-object v4, v6, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->c:Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v4, v4, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p1, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->a:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->a:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v1, v1, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->a:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v1, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->a:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->c:Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v6, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->c:Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v4, v4, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v1, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->c:Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v4, v4, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->b:[Landroid/graphics/Bitmap;

    array-length v0, p0

    rem-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public c(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)Z
    .locals 2

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleColorCount()I

    move-result p1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->b:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->b:[Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    array-length v0, v0

    if-eq v0, p1, :cond_1

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$b;->b:[Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
