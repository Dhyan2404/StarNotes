.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J.\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
        "downToUpEraseContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "erasing",
        "endErase",
        "eraseContext",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;",
        "C",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "touchReader",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    return-void
.end method

.method public static final synthetic access$overlayErasing(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;->C(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final C(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-static {p0, v6}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public endErase(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downToUpEraseContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->endEraseImpl(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public erasing(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downToUpEraseContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getDown()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getErasingDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->createRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->createEraseContext()Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$a;

    invoke-direct {v4, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;

    invoke-direct {v3, p0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$c;

    invoke-direct {v1, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$c;-><init>(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$d;

    invoke-direct {v1, p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$e;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$e;-><init>(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
