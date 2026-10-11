.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 =2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001=B\u000f\u0012\u0006\u0010:\u001a\u000209\u00a2\u0006\u0004\u0008;\u0010<J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0006H\u0014J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0014J\u0008\u0010\u0015\u001a\u00020\tH\u0016J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u001bH\u0007J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u001fH\u0007R\u001c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010-\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010*R\u0016\u0010/\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u00101R\u0016\u00105\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u00104R\u0016\u00108\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00107\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
        "args",
        "Lio/reactivex/rxjava3/core/Observable;",
        "n",
        "msg",
        "",
        "log",
        "p",
        "scrollArgs",
        "m",
        "o",
        "",
        "l",
        "create",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
        "onSubscribe",
        "dispose",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;",
        "event",
        "onScrollBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;",
        "onScrollingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollEndEvent;",
        "onScrollEndEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;",
        "onFlingEventEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StopScrollEvent;",
        "onStopScrollEvent",
        "Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "h",
        "Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "scrollObservable",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
        "currentScrollArgs",
        "",
        "j",
        "F",
        "scrollBeginX",
        "k",
        "scrollBeginY",
        "Ljava/lang/String;",
        "scrollBeginBoxId",
        "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;",
        "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;",
        "flingAction",
        "",
        "J",
        "stopTimeStamp",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewportSize",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:Z

.field public static final q:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/ObservableHolder<",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:F

.field public k:F

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:J

.field public o:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion$scrollToDisplayTimeHistogram$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion$scrollToDisplayTimeHistogram$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->q:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance v0, Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->n:J

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewSize(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->o:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public static final synthetic access$checkStopTimestamp(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->l(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$checkViewportRectChanged(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->m(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    return-void
.end method

.method public static final synthetic access$getCurrentScrollArgs$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->i:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    return-object p0
.end method

.method public static final synthetic access$getScrollBeginX$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->j:F

    return p0
.end method

.method public static final synthetic access$getScrollBeginY$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->k:F

    return p0
.end method

.method public static final synthetic access$getScrollToDisplayTimeHistogram$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->q:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$log(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$scrollBegin(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->n(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scrollTo(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->o(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scrolling(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->p(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentScrollArgs$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->i:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    return-void
.end method

.method public static final synthetic access$setFlingAction$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->m:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    return-void
.end method

.method public static final synthetic access$setScrollBeginBoxId$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->l:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setScrollBeginX$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->j:F

    return-void
.end method

.method public static final synthetic access$setScrollBeginY$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->k:F

    return-void
.end method

.method public static final synthetic access$setViewportSize$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->o:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->getObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getTimeStamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->n:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTimeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pass = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->log(Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return v0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->o:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->o:Lcom/onyx/android/sdk/base/data/Size;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->i:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewX()F

    move-result v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewY()F

    move-result v5

    cmpg-float v2, v2, v5

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewY()F

    move-result v0

    sub-float/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewportRectChanged, scroll deltaX = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", deltaY = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->j:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->j:F

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->k:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->k:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewX(F)V

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->k:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetY()F

    move-result v0

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewY(F)V

    :cond_4
    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewX()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewY()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getSource()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;FFI)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setVisibleBoxList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final onFlingEventEvent(Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setFling(Z)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->getVelocityX()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->getVelocityY()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;->createFling(FFLjava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->j:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setScrollBeginX(F)V

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->k:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setScrollBeginY(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->getUpToDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setUpToDownTime(J)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method

.method public final onScrollBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;->getOffsetX()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;->getOffsetY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;->createScrollBegin(FF)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method

.method public final onScrollEndEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScrollEndEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScrollEndEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;->createScrollEnd()Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method

.method public final onScrollingEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;->getOffsetX()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;->getOffsetY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;->createScrolling(FF)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;->getSource()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setSource(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->h:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method

.method public final onStopScrollEvent(Lcom/onyx/android/sdk/universal/editor/events/app/StopScrollEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/StopScrollEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->n:J

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->m:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->stopFling()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->m:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->j:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewX(F)V

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->k:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewY(F)V

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$e;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$f;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$g;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$g;-><init>(Lcom/onyx/android/sdk/base/utils/Benchmark;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$h;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
