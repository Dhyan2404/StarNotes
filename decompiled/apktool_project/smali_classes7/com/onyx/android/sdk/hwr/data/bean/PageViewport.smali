.class public final Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u000c\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0013\"\u0004\u0008\u0019\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0011\u001a\u0004\u0008\u001c\u0010\u0013\"\u0004\u0008\u001d\u0010\u0015\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;",
        "",
        "",
        "x",
        "convertXToPageCoordinates",
        "y",
        "convertYToPageCoordinates",
        "convertXToScreenCoordinates",
        "convertYToScreenCoordinates",
        "Landroid/graphics/PointF;",
        "pointF",
        "convertToPageCoordinates",
        "convertToScreenCoordinates",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "input",
        "Landroid/graphics/RectF;",
        "a",
        "F",
        "getPageScale",
        "()F",
        "setPageScale",
        "(F)V",
        "pageScale",
        "b",
        "getOffsetX",
        "setOffsetX",
        "offsetX",
        "c",
        "getOffsetY",
        "setOffsetY",
        "offsetY",
        "<init>",
        "()V",
        "Companion",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->a:F

    return-void
.end method


# virtual methods
.method public final convertToPageCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pointF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertXToPageCoordinates(F)F

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertYToPageCoordinates(F)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final convertToPageCoordinates(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertXToPageCoordinates(F)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 7
    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertYToPageCoordinates(F)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 8
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertXToPageCoordinates(F)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 9
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertYToPageCoordinates(F)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public final convertToPageCoordinates(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertXToPageCoordinates(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertYToPageCoordinates(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    return-object v0
.end method

.method public final convertToScreenCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pointF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertXToScreenCoordinates(F)F

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertYToScreenCoordinates(F)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final convertToScreenCoordinates(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertXToScreenCoordinates(F)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 7
    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertYToScreenCoordinates(F)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 8
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertXToScreenCoordinates(F)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 9
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertYToScreenCoordinates(F)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public final convertToScreenCoordinates(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertXToScreenCoordinates(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->convertYToScreenCoordinates(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    return-object v0
.end method

.method public final convertXToPageCoordinates(F)F
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->b:F

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->a:F

    div-float/2addr p1, p0

    return p1
.end method

.method public final convertXToScreenCoordinates(F)F
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->a:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->b:F

    add-float/2addr p1, p0

    return p1
.end method

.method public final convertYToPageCoordinates(F)F
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->c:F

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->a:F

    div-float/2addr p1, p0

    return p1
.end method

.method public final convertYToScreenCoordinates(F)F
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->a:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->c:F

    add-float/2addr p1, p0

    return p1
.end method

.method public final getOffsetX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->b:F

    return p0
.end method

.method public final getOffsetY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->c:F

    return p0
.end method

.method public final getPageScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->a:F

    return p0
.end method

.method public final setOffsetX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->b:F

    return-void
.end method

.method public final setOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->c:F

    return-void
.end method

.method public final setPageScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->a:F

    return-void
.end method
