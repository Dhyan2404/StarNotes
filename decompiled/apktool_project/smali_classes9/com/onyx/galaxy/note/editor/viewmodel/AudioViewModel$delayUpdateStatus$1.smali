.class public final Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$delayUpdateStatus$1;
.super Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->h()V
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
        "com/onyx/galaxy/note/editor/viewmodel/AudioViewModel$delayUpdateStatus$1",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "onNext",
        "",
        "aLong",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$delayUpdateStatus$1;->e:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(J)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$delayUpdateStatus$1;->e:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->access$updateStatus(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$delayUpdateStatus$1;->onNext(J)V

    return-void
.end method
