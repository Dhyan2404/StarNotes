.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010\u001b\u001a\u00020\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0011H\u0002J\u0008\u0010\u0015\u001a\u00020\u0011H\u0002R\u0017\u0010\u001b\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR$\u0010#\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R$\u0010*\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u00102\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\"\u0010@\u001a\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "q",
        "y",
        "p",
        "",
        "l",
        "w",
        "x",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "n",
        "o",
        "m",
        "v",
        "",
        "s",
        "t",
        "u",
        "r",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "h",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getTouchPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "i",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getHitTestVirtualPage",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setHitTestVirtualPage",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "hitTestVirtualPage",
        "j",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getHitTestShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "setHitTestShape",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "hitTestShape",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "k",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "getTextSelection",
        "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "setTextSelection",
        "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V",
        "textSelection",
        "",
        "Ljava/lang/String;",
        "getTextSelectionContentPath",
        "()Ljava/lang/String;",
        "setTextSelectionContentPath",
        "(Ljava/lang/String;)V",
        "textSelectionContentPath",
        "",
        "I",
        "getStartDragExcerptTimerKey",
        "()I",
        "setStartDragExcerptTimerKey",
        "(I)V",
        "startDragExcerptTimerKey",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
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
.field public final h:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->l:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->m:I

    return-void
.end method

.method public static final synthetic access$handleSelectionResult(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$selectTextOnScreen(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->y()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final getStartDragExcerptTimerKey()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->m:I

    return p0
.end method

.method public final getTextSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->k:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-object p0
.end method

.method public final getTextSelectionContentPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final l()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hitTestBoxInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hitTestShape = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v2, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/StartExcerptDragAndDropAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/universal/R$integer;->excerpt_shape_long_press_start_drag_duration:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/StartExcerptDragAndDropAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isLocked(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    const-string v1, "map(...)"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v2, p1, v3}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->l()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->s()Z

    move-result v0

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->w()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->x()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->v()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetType(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result p0

    const/16 v1, 0x13

    if-eq p0, v1, :cond_1

    const/16 v1, 0x21

    if-eq p0, v1, :cond_1

    const/16 v1, 0x23

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x29

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setHitTestShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public final setHitTestVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setStartDragExcerptTimerKey(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->m:I

    return-void
.end method

.method public final setTextSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->k:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-void
.end method

.method public final setTextSelectionContentPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->l:Ljava/lang/String;

    return-void
.end method

.method public final t()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->k:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const-string v0, "just(...)"

    if-nez v1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->k:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-nez v4, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v6, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->l:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Z)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTextSelectionAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTextSelectionAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ShowLongPressPopupEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/ShowLongPressPopupEvent;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_4

    const/16 v3, 0x21

    if-eq v2, v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_4

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->n(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->m(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->o(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_5
    :goto_1
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final y()Lio/reactivex/rxjava3/core/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v2, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v11, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    const-string v1, ""

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
