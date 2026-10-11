.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010G\u001a\u00020F\u0012\u0006\u0010I\u001a\u00020H\u00a2\u0006\u0004\u0008J\u0010KJ\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0018\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\u0005H\u0002J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0018\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0014\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0011H\u0014J\u0008\u0010\u001e\u001a\u00020\u0005H\u0016J\u0018\u0010!\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\nH\u0016J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0003H\u0014J\u0006\u0010#\u001a\u00020\u0005J\u000e\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$J\u0006\u0010\'\u001a\u00020\u0005J\u0006\u0010(\u001a\u00020\u0005J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0003H\u0014J\u0010\u0010*\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0003H\u0014J\u0006\u0010+\u001a\u00020\u0015J\u0006\u0010,\u001a\u00020\u0005R\u0016\u0010 \u001a\u00020\n8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u00100R\u0016\u00103\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00102R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u00104R\u0016\u00107\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u00109R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u00109R\u0016\u0010>\u001a\u00020<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010=R\u0016\u0010@\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010?R\"\u0010E\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010?\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010D\u00a8\u0006L"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "dataList",
        "",
        "p",
        "q",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "n",
        "r",
        "m",
        "current",
        "t",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;",
        "s",
        "action",
        "",
        "u",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "selection",
        "o",
        "Landroid/graphics/Canvas;",
        "canvas",
        "l",
        "create",
        "dispose",
        "touchData",
        "virtualBoxInfo",
        "onTouchContentOutside",
        "onTouchDown",
        "postHideMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;",
        "args",
        "startTextSelection",
        "quitTextSelection",
        "reset",
        "onTouchMove",
        "onTouchUp",
        "hasSelection",
        "onThemeUpdated",
        "k",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;",
        "Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;",
        "highlightViewHandler",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "downPoint",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "",
        "Ljava/lang/String;",
        "contentPath",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "startPosition",
        "endPosition",
        "",
        "I",
        "draggingCursorIndex",
        "Z",
        "selectAfterMove",
        "getHideMenuIfQuit",
        "()Z",
        "setHideMenuIfQuit",
        "(Z)V",
        "hideMenuIfQuit",
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


# instance fields
.field public k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public final l:Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:I

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V
    .locals 11
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

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o:Ljava/lang/String;

    sget-object p1, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->r:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->t:Z

    return-void
.end method

.method public static final synthetic access$drawHighlight(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->l(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-void
.end method

.method public static final synthetic access$getDraggingCursorIndex$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->r:I

    return p0
.end method

.method public static final synthetic access$getEndPosition$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public static final synthetic access$getStartPosition$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public static final synthetic access$onTouchDataList(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onTouchDone(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setContentPath$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSelection$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-void
.end method

.method public static final synthetic access$updatePositionIf(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->u(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->subscribeTouchData()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->touchBuffer$default(Lio/reactivex/rxjava3/core/Observable;JILio/reactivex/rxjava3/core/Scheduler;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->r()V

    return-void
.end method

.method public final getHideMenuIfQuit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->t:Z

    return p0
.end method

.method public final hasSelection()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p0, p2}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->drawHighlight(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-void
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->initPaint()V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m()V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v1

    const-string v2, "render_key_text_selection"

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$lowLatencyRender$1;

    invoke-direct {v3, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$lowLatencyRender$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onThemeUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->onThemeUpdated()V

    return-void
.end method

.method public onTouchContentOutside(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->onTouchContentOutside(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->quitTextSelection()V

    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->postHideMenuEvent()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->writingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/reader/api/ReaderWritingModeKt;->isVertical(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Z

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->hitTestCursor(Ljava/util/List;ZLcom/onyx/android/sdk/geometry/data/TouchData;)I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->r:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->charRectList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->charRectList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :goto_0
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v0

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->s:Z

    return-void
.end method

.method public onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getDown()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isMoved(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->s:Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->t(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public onTouchUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->s:Z

    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-void
.end method

.method public final postHideMenuEvent()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->singleTapUp(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->quitTextSelection()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->quitTextSelection()V

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_2

    const-string v1, "virtualBoxInfo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    invoke-direct {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/ShowTextSelectionMenuEvent;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowTextSelectionMenuEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final quitTextSelection()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->reset()V

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt;->display(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final r()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->reset()V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->t:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->postHideMenuEvent()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt;->display(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public final reset()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v1

    const-string v2, "render_key_text_selection"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v15, 0x7f

    const/16 v16, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v5, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    const-string v1, ""

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o:Ljava/lang/String;

    return-void
.end method

.method public final s(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v4

    new-instance p1, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    const-string v0, "virtualBoxInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v2, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe0

    const/4 v10, 0x0

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "filter(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setHideMenuIfQuit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->t:Z

    return-void
.end method

.method public final startTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->setHitTestBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setTimestamp(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3, v2}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toDownTouchData$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->setDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getContentPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->n:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/PageRange;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/PageRange;->getEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    iput v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->r:I

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getSelectAfterMove()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->s:Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget-object v2, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v3, 0x0

    const-string v4, "virtualBoxInfo"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    iget-object v6, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    iget-object v10, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->o:Ljava/lang/String;

    iget-object v5, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v5, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v3

    goto :goto_0

    :cond_2
    move-object v11, v5

    :goto_0
    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v12

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe0

    const/16 v19, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v19}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->s(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;

    invoke-direct {v3, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$g;

    invoke-direct {v3, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$h;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string v0, "doOnNext(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/PageRange;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PageRange;->getEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->r:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {v3}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v3

    if-ge v1, v3, :cond_1

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    :cond_1
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v1

    if-le v0, v1, :cond_4

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->q:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->p:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    :cond_4
    :goto_0
    return v2
.end method
