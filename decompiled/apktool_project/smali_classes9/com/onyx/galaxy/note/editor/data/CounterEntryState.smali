.class public final Lcom/onyx/galaxy/note/editor/data/CounterEntryState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u00a2\u0006\u0004\u00082\u00103J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\u0008\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u000c\u001a\u00020\u0005J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R$\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\r8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\"R\u0016\u0010%\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"R\u0016\u0010\'\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\"R\"\u0010+\u001a\u00020(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0011\u00101\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;",
        "",
        "",
        "totalTime",
        "segmentTotalTime",
        "",
        "clear",
        "start",
        "pause",
        "resume",
        "reset",
        "segment",
        "stop",
        "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;",
        "newState",
        "c",
        "b",
        "a",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "<set-?>",
        "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;",
        "getState",
        "()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;",
        "state",
        "",
        "I",
        "getCountTimes",
        "()I",
        "setCountTimes",
        "(I)V",
        "countTimes",
        "d",
        "J",
        "e",
        "f",
        "segmentStartPoint",
        "g",
        "currentStartPoint",
        "",
        "h",
        "Z",
        "isRunning",
        "()Z",
        "setRunning",
        "(Z)V",
        "getCurrentTotalTime",
        "()J",
        "currentTotalTime",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V",
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
.field public final a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    sget-object p1, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->b:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()V
    .locals 6

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getCurrentTotalTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->f:J

    iget-wide v4, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->d:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->d:J

    iput-wide v2, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/replicator/counter/data/CounterState;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->b:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->b:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/CounterStateChangeEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-direct {v2, p0, v0, p1}, Lcom/onyx/galaxy/note/editor/event/CounterStateChangeEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;Lcom/onyx/android/sdk/replicator/counter/data/CounterState;Lcom/onyx/android/sdk/replicator/counter/data/CounterState;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->d:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->f:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    return-void
.end method

.method public final getCountTimes()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c:I

    return p0
.end method

.method public final getCurrentTotalTime()J
    .locals 4

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    sub-long v2, v0, v2

    :cond_0
    return-wide v2
.end method

.method public final getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->b:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->h:Z

    return p0
.end method

.method public final pause()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_PAUSE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c(Lcom/onyx/android/sdk/replicator/counter/data/CounterState;)V

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getCurrentTotalTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->d:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->f:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c(Lcom/onyx/android/sdk/replicator/counter/data/CounterState;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->h:Z

    return-void
.end method

.method public final resume()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_RUNNING:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c(Lcom/onyx/android/sdk/replicator/counter/data/CounterState;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    return-void
.end method

.method public final segment()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->b()V

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->f:J

    return-void
.end method

.method public final segmentTotalTime()J
    .locals 4

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getCurrentTotalTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    :goto_0
    return-wide v0
.end method

.method public final setCountTimes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c:I

    return-void
.end method

.method public final setRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->h:Z

    return-void
.end method

.method public final start()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_RUNNING:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c(Lcom/onyx/android/sdk/replicator/counter/data/CounterState;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->e:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->d:J

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->f:J

    return-void
.end method

.method public final stop()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->c(Lcom/onyx/android/sdk/replicator/counter/data/CounterState;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->b()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->h:Z

    return-void
.end method

.method public final totalTime()J
    .locals 4

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->d:J

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->segmentTotalTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->d:J

    :goto_0
    return-wide v0
.end method
