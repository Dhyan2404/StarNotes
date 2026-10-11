.class public final Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ2\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J \u0010\u0005\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0010J\u000e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u000eJ\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;",
        "",
        "()V",
        "normalized",
        "",
        "create",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "b",
        "Landroid/graphics/Bitmap;",
        "c",
        "Landroid/graphics/Canvas;",
        "p",
        "Landroid/graphics/Paint;",
        "m",
        "Landroid/graphics/Matrix;",
        "r",
        "Landroid/graphics/RectF;",
        "rect",
        "Landroid/graphics/Rect;",
        "scale",
        "",
        "createBitmapRenderContext",
        "createByViewPort",
        "viewPortRect",
        "createExportRenderContext",
        "createRenderContext",
        "pageHeight",
        "",
        "getFillBitmapMatrix",
        "isNormalized",
        "setNormalized",
        "",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "m"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    return-object p0
.end method

.method public final create(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 6
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "m"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "r"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-object p0
.end method

.method public final create(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "m"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    return-object p0
.end method

.method public final create(Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "m"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    return-object p0
.end method

.method public final create(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;->create(Landroid/graphics/Rect;F)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    return-object p0
.end method

.method public final create(Landroid/graphics/Rect;F)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;->create(Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->createBitmap(Landroid/graphics/Rect;)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas()V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setRenderColorConfig(I)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final createBitmapRenderContext(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;->create(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    return-object p0
.end method

.method public final createByViewPort(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "viewPortRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setViewPortRect(Landroid/graphics/RectF;)V

    return-object p0
.end method

.method public final createExportRenderContext(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;->create(Landroid/graphics/Rect;F)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setExportModel(Z)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    return-object p0
.end method

.method public final createRenderContext(Landroid/graphics/Rect;I)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;->create(Landroid/graphics/Rect;F)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    return-object p0
.end method

.method public final getFillBitmapMatrix()Landroid/graphics/Matrix;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getFILL_BITMAP_SCALE_VALUE()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getFILL_BITMAP_SCALE_VALUE()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object p0
.end method

.method public final isNormalized()Z
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->access$getNormalized$cp()Z

    move-result p0

    return p0
.end method

.method public final setNormalized(Z)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->access$setNormalized$cp(Z)V

    return-void
.end method
