.class public final Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002R\u0016\u0010\u0010\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "l",
        "virtualPageBoxInfo",
        "",
        "layerId",
        "m",
        "boxInfo",
        "",
        "o",
        "h",
        "I",
        "pageIndex",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;II)V",
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
.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;II)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;->h:I

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;->i:I

    return-void
.end method

.method public static final synthetic access$getLayerId$p(Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;->i:I

    return p0
.end method

.method public static final synthetic access$getPageBoxInfo(Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renderNotePageThumbnail(Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;->m(Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scaleToSpecifiedViewport(Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;->o(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;->m(Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;->h:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILjava/lang/Float;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction$c;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "I)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSizeF(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_LAYER_THUMBNAIL_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/SizeF;->ratioPageSize(Lcom/onyx/android/sdk/base/data/Size;)Landroid/graphics/RectF;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    return-void
.end method
