.class public final Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;
.super Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction<",
        "Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;",
        "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "m",
        "",
        "l",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkDataVersion(Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;->l()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$createInitData(Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;->m()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initData(Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "just(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$create$1;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$create$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$create$2;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getUserCounterInitDataVersion(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v0

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    new-instance v3, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;-><init>()V

    sget-object v4, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_DOWN:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setType(I)V

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$string;->counter_focus:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_0

    move-object v5, v6

    :cond_0
    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setTitle(Ljava/lang/String;)V

    new-instance v5, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x19

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-direct {v5, v6, v10, v11}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    filled-new-array {v5}, [Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setCountList(Ljava/util/List;)V

    invoke-virtual {v3, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;-><init>()V

    sget-object v5, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_DOWN_MULTIPLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setType(I)V

    sget v10, Lcom/onyx/galaxy/note/R$string;->counter_pomodoro:I

    invoke-virtual {v4, v10}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    move-object v10, v6

    :cond_1
    invoke-virtual {v3, v10}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setTitle(Ljava/lang/String;)V

    sget v10, Lcom/onyx/galaxy/note/R$string;->counter_pomodoro_focus:I

    invoke-virtual {v4, v10}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/onyx/galaxy/note/R$string;->counter_pomodoro_rest:I

    invoke-virtual {v4, v11}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\u00d71"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 p0, v4

    move-object/from16 v20, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct {v12, v13, v4, v5}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v13, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v14, 0x5

    invoke-virtual {v7, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-direct {v13, v4, v8, v9}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v4, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u00d72"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v21, v0

    const-wide/16 v14, 0x19

    invoke-virtual {v7, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {v4, v5, v0, v1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v15, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v6

    const-wide/16 v8, 0x5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-direct {v15, v0, v5, v6}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u00d73"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v1

    move-object/from16 v23, v2

    const-wide/16 v8, 0x19

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v5, v1, v2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x5

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-direct {v1, v2, v5, v6}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v2, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u00d74"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v0

    move-object/from16 v17, v1

    const-wide/16 v8, 0x19

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {v2, v5, v0, v1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x1e

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-direct {v0, v1, v8, v9}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    move-object v14, v4

    move-object/from16 v16, v10

    move-object/from16 v18, v2

    move-object/from16 v19, v0

    filled-new-array/range {v12 .. v19}, [Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setCountList(Ljava/util/List;)V

    const-wide/16 v0, -0x1

    add-long v8, v21, v0

    invoke-virtual {v3, v8, v9}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    const/4 v2, 0x1

    aput-object v3, v23, v2

    new-instance v2, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setType(I)V

    sget v3, Lcom/onyx/galaxy/note/R$string;->counter_cet4:I

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v3, v24

    :cond_2
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setTitle(Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    sget v10, Lcom/onyx/galaxy/note/R$string;->counter_cet_writing:I

    invoke-virtual {v4, v10}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    invoke-direct {v3, v10, v11, v12}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v10, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    sget v11, Lcom/onyx/galaxy/note/R$string;->counter_cet_listen:I

    invoke-virtual {v4, v11}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x19

    invoke-virtual {v7, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v11, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    sget v12, Lcom/onyx/galaxy/note/R$string;->counter_cet_reading:I

    invoke-virtual {v4, v12}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v13, 0x28

    invoke-virtual {v7, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    invoke-direct {v11, v12, v13, v14}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    new-instance v12, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    sget v13, Lcom/onyx/galaxy/note/R$string;->counter_cet_translating:I

    invoke-virtual {v4, v13}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-direct {v12, v4, v5, v6}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;J)V

    filled-new-array {v3, v10, v11, v12}, [Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setCountList(Ljava/util/List;)V

    add-long/2addr v8, v0

    invoke-virtual {v2, v8, v9}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    const/4 v0, 0x2

    aput-object v2, v23, v0

    invoke-static/range {v23 .. v23}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$c;->e:Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
