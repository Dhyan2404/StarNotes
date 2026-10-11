.class public final Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;
.super Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction<",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;",
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "g",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "getEventBusHolder",
        "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "setEventBusHolder",
        "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V",
        "eventBusHolder",
        "Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;",
        "h",
        "Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;",
        "getEvent",
        "()Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;",
        "setEvent",
        "(Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;)V",
        "event",
        "<init>",
        "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;)V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public g:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "eventBusHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->Companion:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;->getEmpty()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->g:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->h:Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;

    return-void
.end method

.method public static final synthetic access$emitEvent(Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;)Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->n()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

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
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction$a;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEvent()Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->h:Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;

    return-object p0
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->g:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->g:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->h:Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->safelyPostEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    return-object p0
.end method

.method public final setEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->h:Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;

    return-void
.end method

.method public final setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;->g:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method
