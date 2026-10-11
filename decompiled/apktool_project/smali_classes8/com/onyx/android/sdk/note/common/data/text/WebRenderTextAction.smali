.class public final Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010%\u001a\u00020 \u00a2\u0006\u0004\u00085\u00106J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0008H\u0002J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002J \u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u0002J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0015H\u0002J\u0008\u0010\u0019\u001a\u00020\u0006H\u0002J\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u0010\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010%\u001a\u00020 8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u00100\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00102\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010/R\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010/R\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010/R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u00104\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "render",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "s",
        "n",
        "",
        "renderWidth",
        "renderHeight",
        "o",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Landroid/graphics/Matrix;",
        "matrix",
        "l",
        "r",
        "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
        "q",
        "measure",
        "p",
        "m",
        "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;",
        "t",
        "e",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "f",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getTextShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender;",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender;",
        "textRender",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "h",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "limitSize",
        "i",
        "F",
        "originScaleX",
        "j",
        "originScaleY",
        "k",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    new-instance p1, Lcom/onyx/android/sdk/base/data/Size;

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public static final synthetic access$draw(Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->m()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadMeasureInfo(Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->p(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveToCache(Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->t(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRenderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction$a;-><init>(Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction$b;-><init>(Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction$c;-><init>(Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction$d;-><init>(Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getTextShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x1

    aput v2, v1, v4

    aget v1, v1, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isVertical()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->l:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->k:F

    sub-float/2addr p3, v0

    neg-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->k:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    :goto_0
    sget-object p3, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->i:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->j:F

    div-float/2addr p3, p0

    mul-float/2addr p3, p1

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-void
.end method

.method public final m()Landroid/graphics/Bitmap;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getLimitSize(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v2, "first"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/onyx/android/sdk/base/data/Size;

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleX([F)F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->i:F

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleY([F)F

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->j:F

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->i:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->k:F

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->j:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->l:F

    return-void
.end method

.method public final o(FF)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->loadThumbnailCache(Lcom/onyx/android/sdk/note/common/shape/Shape;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final r()Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->blockingSubscribe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->m:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final render()Z
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->n()V

    iget v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->k:F

    iget v3, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->l:F

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->o(FF)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "font = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->r()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->s(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final s(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0, v1, v0, p1}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->l(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public final t(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->m:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v0, v1, v2, p1}, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->setSize(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
