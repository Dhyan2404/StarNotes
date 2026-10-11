.class public final Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
        "",
        "init",
        "destroy",
        "Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;",
        "event",
        "onCounterSegmentDoneEvent",
        "Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;",
        "onCounterDoneEvent",
        "Lcom/onyx/galaxy/note/editor/event/DismissCounterTipsEvent;",
        "onDismissCounterTipsEvent",
        "b",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "e",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "counterBundle",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "f",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "fragment",
        "Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;",
        "g",
        "Lkotlin/Lazy;",
        "a",
        "()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;",
        "audioPlayer",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->init()V

    new-instance p1, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler$audioPlayer$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler$audioPlayer$2;-><init>(Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;)Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    return-object p0
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->a()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmVolumeOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/FloatOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/FloatOption;->get()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->setVolume(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->a()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->play()V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->destroy(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->unRegister(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->a()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->release()V

    return-void
.end method

.method public init()V
    .locals 1

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->init(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCounterDoneEvent(Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->isManualStop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isMultipleCountDown()Z

    move-result p1

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmNormalCountDownOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {v0, v1, v2, v1}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmMultipleCountDownOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCounterSegmentDoneEvent(Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;->getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmMultipleCountDownOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->b()V

    :cond_1
    return-void
.end method

.method public final onDismissCounterTipsEvent(Lcom/onyx/galaxy/note/editor/event/DismissCounterTipsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/DismissCounterTipsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;->a()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->stop()V

    return-void
.end method
