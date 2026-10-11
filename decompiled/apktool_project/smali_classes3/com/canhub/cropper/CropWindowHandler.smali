.class public final Lcom/canhub/cropper/CropWindowHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropWindowHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008+\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008P\u0010QJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bJ&\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0002J\u0006\u0010\u001e\u001a\u00020\u001dJ0\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u001dJ*\u0010(\u001a\u0004\u0018\u00010\'2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dH\u0002J\"\u0010)\u001a\u0004\u0018\u00010\'2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dH\u0002J*\u0010*\u001a\u0004\u0018\u00010\'2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dH\u0002J*\u0010+\u001a\u0004\u0018\u00010\'2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dH\u0002J0\u0010.\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002J(\u00103\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u0004H\u0002J8\u00106\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002J8\u00109\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002J8\u0010>\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u0004H\u0002J\u0008\u0010?\u001a\u00020\u001dH\u0002R\u0014\u0010A\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u0010@R\u0014\u0010B\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010D\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010CR\u0016\u0010E\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010CR\u0016\u0010F\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010CR\u0016\u0010G\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010CR\u0016\u0010H\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010CR\u0016\u0010I\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010CR\u0016\u0010J\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u0010CR\u0016\u0010K\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010CR\u0016\u0010M\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010CR\u0016\u0010O\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010C\u00a8\u0006R"
    }
    d2 = {
        "Lcom/canhub/cropper/CropWindowHandler;",
        "",
        "Landroid/graphics/RectF;",
        "getRect",
        "",
        "getMinCropWidth",
        "getMinCropHeight",
        "getMaxCropWidth",
        "getMaxCropHeight",
        "getScaleFactorWidth",
        "getScaleFactorHeight",
        "",
        "minCropResultWidth",
        "minCropResultHeight",
        "",
        "setMinCropResultSize",
        "maxCropResultWidth",
        "maxCropResultHeight",
        "setMaxCropResultSize",
        "maxWidth",
        "maxHeight",
        "scaleFactorWidth",
        "scaleFactorHeight",
        "setCropWindowLimits",
        "Lcom/canhub/cropper/CropImageOptions;",
        "options",
        "setInitialAttributeValues",
        "rect",
        "setRect",
        "",
        "showGuidelines",
        "x",
        "y",
        "targetRadius",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "cropShape",
        "isCenterMoveEnabled",
        "Lcom/canhub/cropper/CropWindowMoveHandler;",
        "getMoveHandler",
        "Lcom/canhub/cropper/CropWindowMoveHandler$Type;",
        "e",
        "c",
        "f",
        "d",
        "handleX",
        "handleY",
        "h",
        "x1",
        "y1",
        "x2",
        "y2",
        "a",
        "handleXStart",
        "handleXEnd",
        "i",
        "handleYStart",
        "handleYEnd",
        "j",
        "left",
        "top",
        "right",
        "bottom",
        "g",
        "b",
        "Landroid/graphics/RectF;",
        "mEdges",
        "mGetEdges",
        "F",
        "mMinCropWindowWidth",
        "mMinCropWindowHeight",
        "mMaxCropWindowWidth",
        "mMaxCropWindowHeight",
        "mMinCropResultWidth",
        "mMinCropResultHeight",
        "mMaxCropResultWidth",
        "mMaxCropResultHeight",
        "k",
        "mScaleFactorWidth",
        "l",
        "mScaleFactorHeight",
        "<init>",
        "()V",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->b:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->k:F

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->l:F

    return-void
.end method


# virtual methods
.method public final a(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropWindowHandler;->showGuidelines()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final c(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 6

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x6

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float v4, v3, v0

    const/4 v5, 0x5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    add-float/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    add-float v1, p0, v0

    mul-float/2addr v5, v0

    add-float/2addr p0, v5

    cmpg-float v0, p1, v4

    if-gez v0, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_0

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_0
    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v3

    if-gez p1, :cond_6

    cmpg-float p1, p2, v1

    if-gez p1, :cond_3

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_3
    cmpg-float p0, p2, p0

    if-gez p0, :cond_5

    if-eqz p3, :cond_4

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_6
    cmpg-float p1, p2, v1

    if-gez p1, :cond_7

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_7
    cmpg-float p0, p2, p0

    if-gez p0, :cond_8

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    :goto_0
    return-object p0
.end method

.method public final d(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 7

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_0

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v0

    cmpg-float p3, v0, p3

    if-gtz p3, :cond_1

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->g(FFFFFF)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lcom/canhub/cropper/CropWindowHandler;->c(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final e(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 8

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->h(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->h(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->h(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->h(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->g(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/canhub/cropper/CropWindowHandler;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->i(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->i(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->j(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->j(FFFFFF)Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_8
    if-eqz p4, :cond_9

    iget-object p3, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->g(FFFFFF)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lcom/canhub/cropper/CropWindowHandler;->b()Z

    move-result p3

    if-nez p3, :cond_9

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_9
    invoke-virtual {p0, p1, p2, p4}, Lcom/canhub/cropper/CropWindowHandler;->c(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final f(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 7

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_0

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v0

    cmpg-float p3, v0, p3

    if-gtz p3, :cond_1

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->g(FFFFFF)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lcom/canhub/cropper/CropWindowHandler;->c(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final g(FFFFFF)Z
    .locals 0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p5

    if-gez p0, :cond_0

    cmpl-float p0, p2, p4

    if-lez p0, :cond_0

    cmpg-float p0, p2, p6

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getMaxCropHeight()F
    .locals 2

    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->f:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->j:F

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->l:F

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    return p0
.end method

.method public final getMaxCropWidth()F
    .locals 2

    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->e:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->i:F

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->k:F

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    return p0
.end method

.method public final getMinCropHeight()F
    .locals 2

    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->d:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->h:F

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->l:F

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    return p0
.end method

.method public final getMinCropWidth()F
    .locals 2

    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->c:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->g:F

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->k:F

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    return p0
.end method

.method public final getMoveHandler(FFFLcom/canhub/cropper/CropImageView$CropShape;Z)Lcom/canhub/cropper/CropWindowMoveHandler;
    .locals 1
    .param p4    # Lcom/canhub/cropper/CropImageView$CropShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cropShape"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/canhub/cropper/CropWindowHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/canhub/cropper/CropWindowHandler;->d(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/canhub/cropper/CropWindowHandler;->f(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p5}, Lcom/canhub/cropper/CropWindowHandler;->c(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object p3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/canhub/cropper/CropWindowHandler;->e(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_4

    new-instance p4, Lcom/canhub/cropper/CropWindowMoveHandler;

    invoke-direct {p4, p3, p0, p1, p2}, Lcom/canhub/cropper/CropWindowMoveHandler;-><init>(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    :goto_1
    return-object p4
.end method

.method public final getRect()Landroid/graphics/RectF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/canhub/cropper/CropWindowHandler;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getScaleFactorHeight()F
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->l:F

    return p0
.end method

.method public final getScaleFactorWidth()F
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->k:F

    return p0
.end method

.method public final h(FFFFF)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(FFFFFF)Z
    .locals 0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p4

    if-gez p0, :cond_0

    sub-float/2addr p2, p5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p6

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(FFFFFF)Z
    .locals 0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p6

    if-gtz p0, :cond_0

    cmpl-float p0, p2, p4

    if-lez p0, :cond_0

    cmpg-float p0, p2, p5

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setCropWindowLimits(FFFF)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropWindowHandler;->e:F

    iput p2, p0, Lcom/canhub/cropper/CropWindowHandler;->f:F

    iput p3, p0, Lcom/canhub/cropper/CropWindowHandler;->k:F

    iput p4, p0, Lcom/canhub/cropper/CropWindowHandler;->l:F

    return-void
.end method

.method public final setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V
    .locals 1
    .param p1    # Lcom/canhub/cropper/CropImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->c:F

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->d:F

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->g:F

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->h:F

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->i:F

    iget p1, p1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float p1, p1

    iput p1, p0, Lcom/canhub/cropper/CropWindowHandler;->j:F

    return-void
.end method

.method public final setMaxCropResultSize(II)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/canhub/cropper/CropWindowHandler;->i:F

    int-to-float p1, p2

    iput p1, p0, Lcom/canhub/cropper/CropWindowHandler;->j:F

    return-void
.end method

.method public final setMinCropResultSize(II)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/canhub/cropper/CropWindowHandler;->g:F

    int-to-float p1, p2

    iput p1, p0, Lcom/canhub/cropper/CropWindowHandler;->h:F

    return-void
.end method

.method public final setRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final showGuidelines()Z
    .locals 2

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
