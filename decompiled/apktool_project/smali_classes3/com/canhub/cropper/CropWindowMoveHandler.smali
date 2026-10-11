.class public final Lcom/canhub/cropper/CropWindowMoveHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropWindowMoveHandler$Type;,
        Lcom/canhub/cropper/CropWindowMoveHandler$Companion;,
        Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 <2\u00020\u0001:\u0002<=B\'\u0012\u0006\u0010/\u001a\u00020-\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0004\u0008:\u0010;JN\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0004J \u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J@\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J@\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0004H\u0002JH\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J \u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0004H\u0002J@\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u000cH\u0002JH\u0010 \u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u000cH\u0002J@\u0010$\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000cH\u0002JH\u0010&\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000cH\u0002J\u0018\u0010\'\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0018\u0010(\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0018\u0010)\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0018\u0010*\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J \u0010+\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J \u0010,\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002R\u0014\u0010/\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010.R\u0014\u00101\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u00100R\u0014\u00102\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u00100R\u0014\u00103\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u00100R\u0014\u00104\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u00100R\u0014\u00107\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u00106\u00a8\u0006>"
    }
    d2 = {
        "Lcom/canhub/cropper/CropWindowMoveHandler;",
        "",
        "Landroid/graphics/RectF;",
        "rect",
        "",
        "x",
        "y",
        "bounds",
        "",
        "viewWidth",
        "viewHeight",
        "snapMargin",
        "",
        "fixedAspectRatio",
        "aspectRatio",
        "",
        "move",
        "touchX",
        "touchY",
        "k",
        "snapRadius",
        "l",
        "n",
        "m",
        "edges",
        "margin",
        "o",
        "left",
        "topMoves",
        "bottomMoves",
        "c",
        "right",
        "f",
        "top",
        "leftMoves",
        "rightMoves",
        "h",
        "bottom",
        "a",
        "d",
        "j",
        "g",
        "b",
        "e",
        "i",
        "Lcom/canhub/cropper/CropWindowMoveHandler$Type;",
        "Lcom/canhub/cropper/CropWindowMoveHandler$Type;",
        "type",
        "F",
        "mMinCropWidth",
        "mMinCropHeight",
        "mMaxCropWidth",
        "mMaxCropHeight",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        "mTouchOffset",
        "Lcom/canhub/cropper/CropWindowHandler;",
        "cropWindowHandler",
        "<init>",
        "(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V",
        "Companion",
        "Type",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V
    .locals 1
    .param p1    # Lcom/canhub/cropper/CropWindowMoveHandler$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/canhub/cropper/CropWindowHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropWindowHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result p1

    iput p1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result p1

    iput p1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result p1

    iput p1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result p1

    iput p1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/canhub/cropper/CropWindowMoveHandler;->k(Landroid/graphics/RectF;FF)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 4

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float v2, p2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    sub-float v0, p4, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_2

    move p2, p4

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v0

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    add-float p2, v0, v2

    :cond_3
    sub-float v1, p2, v0

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    add-float p2, v0, v2

    :cond_4
    sub-float v1, p4, p2

    cmpg-float p5, v1, p5

    if-gez p5, :cond_5

    move p2, p4

    :cond_5
    const/4 p5, 0x0

    cmpl-float p5, p6, p5

    if-lez p5, :cond_a

    sub-float p5, p2, v0

    mul-float/2addr p5, p6

    iget v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    cmpg-float v2, p5, v1

    if-gez v2, :cond_6

    div-float/2addr v1, p6

    add-float/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p5, p4, p6

    :cond_6
    iget p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    cmpl-float p4, p5, p0

    if-lez p4, :cond_7

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr p0, p6

    add-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p0, p1, Landroid/graphics/RectF;->top:F

    sub-float p0, p2, p0

    mul-float p5, p0, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    iget p0, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p6

    add-float/2addr p4, p3

    invoke-static {p0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    iget p0, p1, Landroid/graphics/RectF;->right:F

    sub-float p4, p0, p5

    iget p7, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p4, p4, p7

    if-gez p4, :cond_9

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p7

    div-float/2addr p0, p6

    add-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p2, p1, Landroid/graphics/RectF;->top:F

    sub-float p2, p0, p2

    mul-float p5, p2, p6

    move p2, p0

    :cond_9
    if-eqz p8, :cond_a

    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p5, p0

    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p5, p5, p4

    if-lez p5, :cond_a

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p4, p0

    div-float/2addr p4, p6

    add-float/2addr p5, p4

    invoke-static {p3, p5}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final b(Landroid/graphics/RectF;F)V
    .locals 1

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p2

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p2, v1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float v4, p2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :cond_1
    sub-float v2, p2, v1

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2

    move p2, v1

    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v3, v2, p2

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    sub-float p2, v2, v4

    :cond_3
    sub-float v3, v2, p2

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    sub-float p2, v2, v4

    :cond_4
    sub-float v3, p2, v1

    cmpg-float p4, v3, p4

    if-gez p4, :cond_5

    move p2, v1

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    sub-float p4, v2, p2

    div-float/2addr p4, p5

    iget v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    cmpg-float v3, p4, v0

    if-gez v3, :cond_6

    mul-float/2addr v0, p5

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_6
    iget p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    cmpl-float v0, p4, p0

    if-lez v0, :cond_7

    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr p0, p5

    sub-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, p2

    div-float p4, p0, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    iget p0, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p5

    sub-float/2addr p4, p3

    invoke-static {p0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float p6, p0, p4

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v0

    mul-float/2addr p0, p5

    sub-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p0

    div-float p4, p2, p5

    move p2, p0

    :cond_9
    if-eqz p7, :cond_a

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p4, p0

    iget p6, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p4, p6

    if-lez p4, :cond_a

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p6, p0

    mul-float/2addr p6, p5

    sub-float/2addr p4, p6

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method public final d(Landroid/graphics/RectF;F)V
    .locals 1

    iget p0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, p2

    sub-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method public final e(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, p3

    sub-float/2addr p0, v0

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p0, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p3}, Landroid/graphics/RectF;->inset(FF)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0, p3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method public final f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 4

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, p2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_1
    sub-float v0, p4, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_2

    move p2, p4

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v0

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    add-float p2, v0, v2

    :cond_3
    sub-float v1, p2, v0

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    add-float p2, v0, v2

    :cond_4
    sub-float v1, p4, p2

    cmpg-float p5, v1, p5

    if-gez p5, :cond_5

    move p2, p4

    :cond_5
    const/4 p5, 0x0

    cmpl-float p5, p6, p5

    if-lez p5, :cond_a

    sub-float p5, p2, v0

    div-float/2addr p5, p6

    iget v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    cmpg-float v2, p5, v1

    if-gez v2, :cond_6

    mul-float/2addr v1, p6

    add-float/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float p5, p4, p6

    :cond_6
    iget p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    cmpl-float p4, p5, p0

    if-lez p4, :cond_7

    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, p6

    add-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    sub-float p0, p2, p0

    div-float p5, p0, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    iget p0, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p6

    add-float/2addr p4, p3

    invoke-static {p0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float p4, p0, p5

    iget p7, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p4, p4, p7

    if-gez p4, :cond_9

    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p7

    mul-float/2addr p0, p6

    add-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float p2, p0, p2

    div-float p5, p2, p6

    move p2, p0

    :cond_9
    if-eqz p8, :cond_a

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p0

    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p5, p5, p4

    if-lez p5, :cond_a

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p4, p0

    mul-float/2addr p4, p6

    add-float/2addr p5, p4

    invoke-static {p3, p5}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public final g(Landroid/graphics/RectF;F)V
    .locals 1

    iget p0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public final h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p2, v1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_1
    sub-float v2, p2, v1

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2

    move p2, v1

    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v2, p2

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    sub-float p2, v2, v4

    :cond_3
    sub-float v3, v2, p2

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    sub-float p2, v2, v4

    :cond_4
    sub-float v3, p2, v1

    cmpg-float p4, v3, p4

    if-gez p4, :cond_5

    move p2, v1

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    sub-float p4, v2, p2

    mul-float/2addr p4, p5

    iget v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    cmpg-float v3, p4, v0

    if-gez v3, :cond_6

    div-float/2addr v0, p5

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float/2addr p4, p5

    :cond_6
    iget p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    cmpl-float v0, p4, p0

    if-lez v0, :cond_7

    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p0, p5

    sub-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p2

    mul-float p4, p0, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    iget p0, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p5

    sub-float/2addr p4, p3

    invoke-static {p0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    iget p0, p1, Landroid/graphics/RectF;->right:F

    sub-float p6, p0, p4

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, v0

    div-float/2addr p0, p5

    sub-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p0

    mul-float p4, p2, p5

    move p2, p0

    :cond_9
    if-eqz p7, :cond_a

    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p4, p0

    iget p6, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p4, p6

    if-lez p4, :cond_a

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p6, p0

    div-float/2addr p6, p5

    sub-float/2addr p4, p6

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method public final i(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p3

    sub-float/2addr p0, v0

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p0, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p0}, Landroid/graphics/RectF;->inset(FF)V

    iget p0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    sub-float/2addr v0, p0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    sub-float/2addr p2, p0

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method public final j(Landroid/graphics/RectF;F)V
    .locals 1

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p2

    sub-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method public final k(Landroid/graphics/RectF;FF)V
    .locals 3

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move p1, v1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v1, v0, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    goto :goto_1

    :pswitch_1
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :pswitch_2
    iget p1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :pswitch_3
    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :pswitch_4
    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_0
    sub-float/2addr p1, p2

    move v2, v1

    move v1, p1

    move p1, v2

    goto :goto_2

    :pswitch_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, p2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :pswitch_6
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, p2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :pswitch_7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, p2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :pswitch_8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, p2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    :goto_1
    sub-float/2addr p1, p3

    :goto_2
    iget-object p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iput v1, p0, Landroid/graphics/PointF;->x:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr p3, v0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float v1, v0, p2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v3, 0x2

    const v4, 0x3f866666    # 1.05f

    if-ltz v1, :cond_0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float v5, v1, p2

    int-to-float p5, p5

    cmpl-float p5, v5, p5

    if-gtz p5, :cond_0

    add-float/2addr v0, p2

    iget p5, p4, Landroid/graphics/RectF;->left:F

    cmpg-float p5, v0, p5

    if-ltz p5, :cond_0

    add-float/2addr v1, p2

    iget p5, p4, Landroid/graphics/RectF;->right:F

    cmpl-float p5, v1, p5

    if-lez p5, :cond_1

    :cond_0
    div-float/2addr p2, v4

    iget-object p5, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v0, p5, Landroid/graphics/PointF;->x:F

    int-to-float v1, v3

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    iput v0, p5, Landroid/graphics/PointF;->x:F

    :cond_1
    iget p5, p1, Landroid/graphics/RectF;->top:F

    add-float v0, p5, p3

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float v1, v0, p3

    int-to-float p6, p6

    cmpl-float p6, v1, p6

    if-gtz p6, :cond_2

    add-float/2addr p5, p3

    iget p6, p4, Landroid/graphics/RectF;->top:F

    cmpg-float p5, p5, p6

    if-ltz p5, :cond_2

    add-float/2addr v0, p3

    iget p5, p4, Landroid/graphics/RectF;->bottom:F

    cmpl-float p5, v0, p5

    if-lez p5, :cond_3

    :cond_2
    div-float/2addr p3, v4

    iget-object p5, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget p6, p5, Landroid/graphics/PointF;->y:F

    int-to-float v0, v3

    div-float v0, p3, v0

    sub-float/2addr p6, v0

    iput p6, p5, Landroid/graphics/PointF;->y:F

    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p1, p4, p7}, Lcom/canhub/cropper/CropWindowMoveHandler;->o(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public final m(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V
    .locals 13

    move-object v9, p0

    move-object v10, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v11, p4

    move/from16 v12, p8

    iget-object v0, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-virtual {p0, p1, v11, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->e(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-virtual {p0, p1, v11, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->i(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-virtual {p0, p1, v11, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->e(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-virtual {p0, p1, v11, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->i(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v4, p2, v3}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->calculateAspectRatio$cropper_release(FFFF)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-virtual {p0, p1, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->g(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-virtual {p0, p1, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->b(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    iget v1, v10, Landroid/graphics/RectF;->top:F

    iget v4, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, p2, v1, v4, v3}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->calculateAspectRatio$cropper_release(FFFF)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-virtual {p0, p1, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->d(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-virtual {p0, p1, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->b(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v3, p2, v4}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->calculateAspectRatio$cropper_release(FFFF)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-virtual {p0, p1, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->g(Landroid/graphics/RectF;F)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-virtual {p0, p1, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->j(Landroid/graphics/RectF;F)V

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    iget v1, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p2, v3, v1, v4}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->calculateAspectRatio$cropper_release(FFFF)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-virtual {p0, p1, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->d(Landroid/graphics/RectF;F)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-virtual {p0, p1, v12}, Lcom/canhub/cropper/CropWindowMoveHandler;->j(Landroid/graphics/RectF;F)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V
    .locals 9
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    const-string v1, "rect"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bounds"

    move-object v4, p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float v5, p3, v1

    iget-object v1, v0, Lcom/canhub/cropper/CropWindowMoveHandler;->a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v6, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    if-ne v1, v6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v3, v5

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->l(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v3, v5

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->m(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v3, v5

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->n(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    :goto_0
    return-void
.end method

.method public final n(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .locals 10

    move-object v9, p0

    iget-object v0, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move/from16 v4, p7

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v2, p2

    move v4, p5

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_0

    :pswitch_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    move/from16 v4, p7

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_0

    :pswitch_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v4, p5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_0

    :pswitch_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, p3

    cmpg-float v1, p0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget p0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v1, v0, p3

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    sub-float/2addr v0, p0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, p3

    cmpl-float v1, p0, v1

    if-lez v1, :cond_2

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float p3, p2, p3

    cmpl-float p3, p0, p3

    if-lez p3, :cond_3

    sub-float/2addr p2, p0

    invoke-virtual {p1, v2, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    return-void
.end method
