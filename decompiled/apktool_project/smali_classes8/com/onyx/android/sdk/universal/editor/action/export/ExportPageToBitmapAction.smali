.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Landroid/graphics/Bitmap;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "l",
        "boxInfo",
        "m",
        "",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;",
        "args",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;)V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    return-void
.end method

.method public static final synthetic access$getPageBoxInfo(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renderPageThumbnail(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->m(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scaleToSpecifiedViewport(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->n(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;)V

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

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getPageId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getPageIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;->getPageBoxInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v11, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getRenderTemplate()Z

    move-result v4

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getRenderTape()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getRenderExcerptIndicator()Z

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x28

    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1, v11}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$d;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getLimitSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSizeF(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object v0

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getLimitSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/data/SizeF;->ratioPageSize(Lcom/onyx/android/sdk/base/data/Size;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0, v3, v2, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getExportSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->getExportSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p1, p0, v3, v2, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method
