.class public abstract Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016R\u0018\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;",
        "Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;",
        "()V",
        "gesturePublishObservable",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "singleGestureObservable",
        "getGesturePublishObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "getSingleGestureObservable",
        "publishGesture",
        "",
        "output",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public gesturePublishObservable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->gesturePublishObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    return-void
.end method


# virtual methods
.method public getGesturePublishObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/Subject;->hasComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->gesturePublishObservable:Lio/reactivex/rxjava3/subjects/Subject;

    return-object p0
.end method

.method public getSingleGestureObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/Subject;->hasComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    return-object v0
.end method

.method public publishGesture(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->gesturePublishObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/Subject;->hasComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->gesturePublishObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/Subject;->hasComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;->singleGestureObservable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-interface {p0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_1
    return-void
.end method
