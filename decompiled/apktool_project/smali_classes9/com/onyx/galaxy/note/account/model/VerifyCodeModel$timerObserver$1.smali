.class public final Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;
.super Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;-><init>(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "onNext",
        "",
        "value",
        "",
        "note_overseasRelease"
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
.field public final synthetic e:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;->e:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(J)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;->e:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-static {v0}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->access$getCountDown$p(Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    mul-long/2addr p1, v3

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->setLeftTime(J)V

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;

    iget-object p2, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;->e:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-static {p2}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->access$getKey$p(Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;->e:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->getLeftTime()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;-><init>(Ljava/lang/String;J)V

    .line 4
    sget-object p2, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->safelyPostEvent(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;->e:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->getLeftTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;->e:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->access$getKey$p(Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->release(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;->onNext(J)V

    return-void
.end method
