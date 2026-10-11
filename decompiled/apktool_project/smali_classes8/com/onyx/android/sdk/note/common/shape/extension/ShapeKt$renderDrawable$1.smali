.class final Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt$renderDrawable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->renderDrawable(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ILandroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/graphics/RectF;",
        "Lcom/onyx/android/sdk/base/data/SizeF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/PointF;",
        "rect",
        "Landroid/graphics/RectF;",
        "bitmapSize",
        "Lcom/onyx/android/sdk/base/data/SizeF;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt$renderDrawable$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt$renderDrawable$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt$renderDrawable$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt$renderDrawable$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt$renderDrawable$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/SizeF;)Landroid/graphics/PointF;
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/SizeF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmapSize"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/SizeF;->getWidth()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/SizeF;->getHeight()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/RectF;

    check-cast p2, Lcom/onyx/android/sdk/base/data/SizeF;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt$renderDrawable$1;->invoke(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/SizeF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
