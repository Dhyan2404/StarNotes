.class public final Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$Companion;,
        Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCounterRecordModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterRecordModel.kt\ncom/onyx/android/sdk/replicator/counter/model/CounterRecordModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 *2\u00020\u00012\u00020\u0002:\u0002*+B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0019J\u0006\u0010\'\u001a\u00020%J\u0006\u0010(\u001a\u00020%J\u0006\u0010)\u001a\u00020%R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R \u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0014\"\u0004\u0008 \u0010\u0016R\u001a\u0010!\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000b\"\u0004\u0008#\u0010\r\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "Ljava/io/Serializable;",
        "()V",
        "duration",
        "",
        "getDuration",
        "()J",
        "state",
        "",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "status",
        "getStatus",
        "setStatus",
        "taskId",
        "",
        "getTaskId",
        "()Ljava/lang/String;",
        "setTaskId",
        "(Ljava/lang/String;)V",
        "timeList",
        "",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;",
        "getTimeList",
        "()Ljava/util/List;",
        "setTimeList",
        "(Ljava/util/List;)V",
        "title",
        "getTitle",
        "setTitle",
        "type",
        "getType",
        "setType",
        "addRecord",
        "",
        "timeRecord",
        "complete",
        "inProgress",
        "reset",
        "Companion",
        "TimeRecord",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCounterRecordModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterRecordModel.kt\ncom/onyx/android/sdk/replicator/counter/model/CounterRecordModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private state:I

.field private status:I

.field private taskId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private timeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->Companion:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->title:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_UP:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->type:I

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;->IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->state:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->timeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addRecord(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "timeRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->timeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final complete()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;->DONE:Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->state:I

    return-void
.end method

.method public final getDuration()J
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->timeList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->state:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->status:I

    return p0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->timeList:Ljava/util/List;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->type:I

    return p0
.end method

.method public final inProgress()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;->IN_PROGRESS:Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->state:I

    return-void
.end method

.method public final reset()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;->IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->state:I

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->timeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->state:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->status:I

    return-void
.end method

.method public final setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->taskId:Ljava/lang/String;

    return-void
.end method

.method public final setTimeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->timeList:Ljava/util/List;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->type:I

    return-void
.end method
