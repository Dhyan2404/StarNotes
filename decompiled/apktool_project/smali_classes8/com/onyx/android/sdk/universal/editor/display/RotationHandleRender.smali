.class public final Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;",
        "",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "",
        "drawRotationHandle",
        "Landroid/graphics/Bitmap;",
        "a",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "paint",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;->a:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    sget v0, Lcom/onyx/android/sdk/universal/R$drawable;->ic_selection_rotation:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->getRotationPointSize()F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->getRotationPointSize()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final drawRotationHandle(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {v2, v1, v3, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->translate(Landroid/graphics/RectF;FF)V

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->getRotationPointSize()F

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    invoke-static {v1, p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    iget p2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
