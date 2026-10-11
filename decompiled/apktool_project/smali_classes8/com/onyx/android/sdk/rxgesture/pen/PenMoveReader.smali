.class public final Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;
.super Lcom/onyx/android/sdk/rxgesture/pen/PenReader;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 42\u00020\u00012\u00020\u0002:\u00014B\u000f\u0012\u0006\u00101\u001a\u000200\u00a2\u0006\u0004\u00082\u00103J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J$\u0010\u0014\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0008\u0010\u001b\u001a\u00020\u0016H\u0002J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0016J\u0006\u0010\u001e\u001a\u00020\u0000J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0010\u0010\"\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0008\u0010$\u001a\u00020\u0016H\u0016J\u0008\u0010%\u001a\u00020\u000cH\u0016R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\'R\u0018\u0010*\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010/\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010.\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "b",
        "point",
        "j",
        "k",
        "m",
        "l",
        "curPoint",
        "",
        "e",
        "d",
        "i",
        "f",
        "lastPoint",
        "",
        "limitTime",
        "g",
        "touchPoint",
        "",
        "p",
        "n",
        "r",
        "q",
        "o",
        "onActivate",
        "onDeactivate",
        "subscribe",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "data",
        "onDown",
        "onMove",
        "onUp",
        "dispose",
        "isDisposed",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "emitter",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
        "h",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "pausePoint",
        "Z",
        "longPressed",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "penGesture",
        "<init>",
        "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V",
        "Companion",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public f:Lio/reactivex/rxjava3/core/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->Companion:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penGesture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->c(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final synthetic access$filterByDistance(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->d(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByMoved(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->e(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByTime(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->f(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByTime(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;J)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->g(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterLongPressByDistance(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->i(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPausePoint$p(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public static final synthetic access$handle(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->j(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onHold(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->n(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onLongPress(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->o()V

    return-void
.end method

.method public static final synthetic access$onReleaseHold(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->q(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->f:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x190

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->g(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/a2l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/a2l;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 7

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v6, 0x0

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return v6

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->Companion:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;->isMoving$default(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return v6

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public dispose()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 7

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v6, 0x0

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return v6

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->Companion:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;->isMoving$default(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 p0, 0x1

    return p0

    :cond_1
    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return v6
.end method

.method public final f(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 7

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;J)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide p1

    sub-long/2addr v0, p1

    cmp-long p1, v0, p3

    if-lez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->Companion:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->Companion:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture$Companion;->getLONG_PRESS_LIMIT_DISTANCE()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;->isMoving(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->isLongPressure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->isHolding()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->k(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->l(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$a;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$b;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$c;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$d;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$e;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$f;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$g;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$h;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$h;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$i;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->isUp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pen onHold"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->r()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->postEvent()V

    return-object p1
.end method

.method public final o()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pen onLongPress"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setActiveReader(I)V

    return-void
.end method

.method public onActivate()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onActivate()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->subscribe()Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->isLongPressure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->i:Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->getPenStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->MOVING:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->setPenStatus(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->postEvent()V

    return-void
.end method

.method public onDeactivate()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onDeactivate()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->dispose()V

    return-void
.end method

.method public onDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setActiveReader(I)V

    return-void
.end method

.method public onMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->isInLimitRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->onUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setTimestamp(J)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->p(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public onUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pen onUp"

    invoke-virtual {p1, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setActiveReader(I)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->f:Lio/reactivex/rxjava3/core/ObservableEmitter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pen onReleaseHold"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->penStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->MOVING:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->setPenStatus(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->postEvent()V

    return-object p1
.end method

.method public final r()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pen onHold"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->penStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->holdCountIncrease()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->HOLDING:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->postEvent(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V

    return-void
.end method

.method public final subscribe()Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->b()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$j;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->g:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method
