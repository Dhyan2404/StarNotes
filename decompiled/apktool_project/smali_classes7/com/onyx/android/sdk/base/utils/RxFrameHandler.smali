.class public final Lcom/onyx/android/sdk/base/utils/RxFrameHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0012\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0014R*\u0010\u001b\u001a\u0015\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u00060\u00060\u0016\u00a2\u0006\u0002\u0008\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/RxFrameHandler;",
        "",
        "",
        "start",
        "stop",
        "checkLeakOnDestroy",
        "",
        "frameTimeNanos",
        "b",
        "c",
        "d",
        "",
        "a",
        "Z",
        "DEBUG_LOG",
        "Landroid/view/Choreographer;",
        "kotlin.jvm.PlatformType",
        "Landroid/view/Choreographer;",
        "choreographer",
        "Landroid/view/Choreographer$FrameCallback;",
        "Landroid/view/Choreographer$FrameCallback;",
        "choreographerCallback",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "getPublishSubject",
        "()Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "publishSubject",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "e",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isRunning",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/RxFrameHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Z

.field public static final b:Landroid/view/Choreographer;

.field public static c:Landroid/view/Choreographer$FrameCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxFrameHandler;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->b:Landroid/view/Choreographer;

    new-instance v1, Lcom/sunia/HTREnginev2/awl;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/awl;-><init>(Lcom/onyx/android/sdk/base/utils/RxFrameHandler;)V

    sput-object v1, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->d:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/base/utils/RxFrameHandler;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->b(J)V

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->d(J)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->d:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->b:Landroid/view/Choreographer;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final checkLeakOnDestroy()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->d:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLeakOnDestroy, hasObservers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isRunning = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final d(J)V
    .locals 0

    return-void
.end method

.method public final getPublishSubject()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->d:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public final start()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->c()V

    return-void
.end method

.method public final stop()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
