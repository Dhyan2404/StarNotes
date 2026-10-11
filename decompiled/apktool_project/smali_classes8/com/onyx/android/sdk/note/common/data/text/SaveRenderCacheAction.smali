.class public final Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\u0008\u0010\u0007\u001a\u00020\u0000H\u0002R\u0016\u0010\u000b\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "setSize",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "e",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "f",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "Landroid/graphics/Bitmap;",
        "g",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "h",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;)V",
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
.field public e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->g:Landroid/graphics/Bitmap;

    new-instance p1, Lcom/onyx/android/sdk/base/data/Size;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public static final synthetic access$save(Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;)Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->n()Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->m(Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction$create$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction$create$1;

    new-instance v2, Lcom/sunia/HTREnginev2/y0m;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/y0m;-><init>(Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRenderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction$a;-><init>(Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->g:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getNormalRenderSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v1

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "BASE"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "ZOOM"

    :goto_1
    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->saveRenderThumbnailCache(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_2
    return-object p0
.end method

.method public final setSize(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->h:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method
