.class public final Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;
.super Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->h()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioRecordManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioRecordManager.kt\ncom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,262:1\n1#2:263\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0008\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "",
        "t",
        "",
        "onNext",
        "e",
        "J",
        "recordDuration",
        "sdk-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAudioRecordManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioRecordManager.kt\ncom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,262:1\n1#2:263\n*E\n"
    }
.end annotation


# instance fields
.field public e:J

.field public final synthetic f:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 2

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;->f:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;->e:J

    return-void
.end method


# virtual methods
.method public onNext(J)V
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;->f:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordDuration()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;->e:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    iget-object p2, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;->f:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 4
    invoke-virtual {p2}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->postRecordChangeEvent$sdk_media_release()V

    .line 5
    iput-wide v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;->e:J

    :cond_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$getRecordChangeObserver$1;->onNext(J)V

    return-void
.end method
