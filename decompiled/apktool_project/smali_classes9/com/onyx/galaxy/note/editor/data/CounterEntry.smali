.class public final Lcom/onyx/galaxy/note/editor/data/CounterEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0018\u00a2\u0006\u0004\u00080\u00101J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\u0008\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\nJ\u0006\u0010\u000e\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\nJ\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\u0012J\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0008\u0010\u0017\u001a\u00020\nH\u0002R\u0017\u0010\u001c\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001b\u0010/\u001a\u00020+8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u001f\u001a\u0004\u0008-\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "",
        "",
        "isRunning",
        "isCounting",
        "isStop",
        "isCountUp",
        "isMultipleCountDown",
        "hasCountResult",
        "hasStart",
        "",
        "clear",
        "start",
        "pause",
        "resume",
        "reset",
        "segment",
        "stop",
        "",
        "getCountPercent",
        "getCurrentCountPercent",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;",
        "getCurrentTimeSetting",
        "a",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "getTaskModel",
        "()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "taskModel",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;",
        "b",
        "Lkotlin/Lazy;",
        "getEntryState",
        "()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;",
        "entryState",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "c",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "getEntryRecord",
        "()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "setEntryRecord",
        "(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V",
        "entryRecord",
        "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;",
        "d",
        "getTimerHandler",
        "()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;",
        "timerHandler",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V",
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
.field public final a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "taskModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/CounterEntry$entryState$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry$entryState$2;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->Companion:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$Companion;->createFromTaskModel(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/CounterEntry$timerHandler$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry$timerHandler$2;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->d:Lkotlin/Lazy;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    sget-object v1, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/utils/CounterUtils;->getFormatedTaskName(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->reset()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    new-instance v7, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->segmentTotalTime()J

    move-result-wide v3

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->Companion:Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;->getMAX_COUNT_UP_DURATION_MS()J

    move-result-wide v5

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getDuration()J

    move-result-wide v8

    sub-long/2addr v5, v8

    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->addRecord(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    new-instance v7, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->totalTime()J

    move-result-wide v3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->addRecord(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;)V

    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->clear()V

    new-instance v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    return-void
.end method

.method public final getCountPercent()F
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->totalTime()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->safeDivide(FLjava/lang/Number;)F

    move-result p0

    return p0
.end method

.method public final getCurrentCountPercent()F
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getCurrentTimeSetting()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->segmentTotalTime()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->safeDivide(FLjava/lang/Number;)F

    move-result p0

    return p0
.end method

.method public final getCurrentTimeSetting()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getCountTimes()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getCountList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getCountList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getEntryRecord()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    return-object p0
.end method

.method public final getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    return-object p0
.end method

.method public final getTaskModel()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    return-object p0
.end method

.method public final getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    return-object p0
.end method

.method public final hasCountResult()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getState()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;->DONE:Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasStart()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getState()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;->IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCountUp()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getType()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_UP:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCounting()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_RUNNING:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMultipleCountDown()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getType()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_DOWN_MULTIPLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final isStop()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final pause()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_RUNNING:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->pause()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->cancelTimer()V

    return-void
.end method

.method public final reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->cancelTimer()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->reset()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->reset()V

    return-void
.end method

.method public final resume()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_PAUSE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->resume()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->startTimer()V

    return-void
.end method

.method public final segment()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->segment()V

    return-void
.end method

.method public final setEntryRecord(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    return-void
.end method

.method public final start()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_RUNNING:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->start()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->inProgress()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->startTimer()V

    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->a()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->stop()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->c:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->complete()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->cancelTimer()V

    return-void
.end method
