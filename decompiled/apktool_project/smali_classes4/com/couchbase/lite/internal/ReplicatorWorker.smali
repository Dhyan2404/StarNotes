.class public final Lcom/couchbase/lite/internal/ReplicatorWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/ReplicatorWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u001a\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0011\u0010\u000f\u001a\u00020\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/couchbase/lite/internal/ReplicatorWorker;",
        "Landroidx/work/CoroutineWorker;",
        "appContext",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "buildData",
        "Landroidx/work/Data;",
        "tag",
        "",
        "status",
        "Lcom/couchbase/lite/ReplicatorStatus;",
        "err",
        "",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFactory",
        "Lcom/couchbase/lite/WorkManagerReplicatorFactory;",
        "factoryClass",
        "Companion",
        "couchbase-lite-android-ee-ktx-3.2.2-21_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/couchbase/lite/internal/ReplicatorWorker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_REPLICATION_ACTIVITY_LEVEL:Ljava/lang/String; = "com.couchbase.mobile.android.replicator.ACTIVITY_LEVEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_REPLICATION_COMPLETED:Ljava/lang/String; = "com.couchbase.mobile.android.replicator.progress.COMPLETED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_REPLICATION_ERROR_CODE:Ljava/lang/String; = "com.couchbase.mobile.android.replicator.error.CODE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_REPLICATION_ERROR_MESSAGE:Ljava/lang/String; = "com.couchbase.mobile.android.replicator.error.MESSAGE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_REPLICATION_TOTAL:Ljava/lang/String; = "com.couchbase.mobile.android.replicator.progress.TOTAL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_REPLICATOR:Ljava/lang/String; = "com.couchbase.mobile.android.replicator.ID"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final activityLevelFromString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/ReplicatorActivityLevel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final stopStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/ReplicatorActivityLevel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/couchbase/lite/internal/ReplicatorWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/couchbase/lite/internal/ReplicatorWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/couchbase/lite/internal/ReplicatorWorker;->Companion:Lcom/couchbase/lite/internal/ReplicatorWorker$Companion;

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->OFFLINE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    sget-object v1, Lcom/couchbase/lite/ReplicatorActivityLevel;->IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    sget-object v2, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    filled-new-array {v0, v1, v2}, [Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/couchbase/lite/internal/ReplicatorWorker;->stopStates:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v3, Lcom/couchbase/lite/ReplicatorActivityLevel;->CONNECTING:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    sget-object v4, Lcom/couchbase/lite/ReplicatorActivityLevel;->BUSY:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    filled-new-array {v2, v0, v3, v1, v4}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/ReplicatorWorker;->activityLevelFromString:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic access$buildData(Lcom/couchbase/lite/internal/ReplicatorWorker;Ljava/lang/String;Lcom/couchbase/lite/ReplicatorStatus;)Landroidx/work/Data;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/ReplicatorWorker;->buildData(Ljava/lang/String;Lcom/couchbase/lite/ReplicatorStatus;)Landroidx/work/Data;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActivityLevelFromString$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/ReplicatorWorker;->activityLevelFromString:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getStopStates$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/ReplicatorWorker;->stopStates:Ljava/util/List;

    return-object v0
.end method

.method private final buildData(Ljava/lang/String;Lcom/couchbase/lite/ReplicatorStatus;)Landroidx/work/Data;
    .locals 4

    .line 1
    new-instance p0, Landroidx/work/Data$Builder;

    invoke-direct {p0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v0, "com.couchbase.mobile.android.replicator.ID"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.couchbase.mobile.android.replicator.ACTIVITY_LEVEL"

    invoke-virtual {p0, v0, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p0

    const-string p1, "Builder()\n            .p\u2026activityLevel.toString())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatorStatus;->getProgress()Lcom/couchbase/lite/ReplicatorProgress;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorProgress;->getCompleted()J

    move-result-wide v0

    const-string v2, "com.couchbase.mobile.android.replicator.progress.COMPLETED"

    invoke-virtual {p0, v2, v0, v1}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    move-result-object v0

    const-string v1, "com.couchbase.mobile.android.replicator.progress.TOTAL"

    .line 6
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorProgress;->getTotal()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    .line 7
    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.couchbase.mobile.android.replicator.error.CODE"

    .line 8
    invoke-virtual {p1}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    move-result-object p2

    const-string v0, "com.couchbase.mobile.android.replicator.error.MESSAGE"

    .line 9
    invoke-virtual {p1}, Lcom/couchbase/lite/CouchbaseLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p0

    const-string p1, "dataBuilder.build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final buildData(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/work/Data;
    .locals 3

    move-object p0, p2

    :goto_0
    if-eqz p0, :cond_0

    .line 11
    instance-of v0, p0, Lcom/couchbase/lite/CouchbaseLiteException;

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p0, Lcom/couchbase/lite/CouchbaseLiteException;

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xa

    goto :goto_1

    .line 15
    :cond_1
    check-cast p0, Lcom/couchbase/lite/CouchbaseLiteException;

    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result p0

    move-object v2, p2

    move p2, p0

    move-object p0, v2

    .line 17
    :goto_1
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    if-nez p1, :cond_2

    const-string p1, "unknown"

    :cond_2
    const-string v1, "com.couchbase.mobile.android.replicator.ID"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p1

    .line 19
    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.couchbase.mobile.android.replicator.ACTIVITY_LEVEL"

    invoke-virtual {p1, v1, v0}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p1

    const-string v0, "com.couchbase.mobile.android.replicator.error.CODE"

    .line 20
    invoke-virtual {p1, v0, p2}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    move-result-object p1

    if-eqz p0, :cond_4

    .line 21
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_5

    const-string p0, "error"

    :cond_5
    const-string p2, "com.couchbase.mobile.android.replicator.error.MESSAGE"

    invoke-virtual {p1, p2, p0}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p0

    const-string p1, "Builder()\n            .p\u2026msg)\n            .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getFactory(Ljava/lang/String;)Lcom/couchbase/lite/WorkManagerReplicatorFactory;
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.couchbase.lite.WorkManagerReplicatorFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/couchbase/lite/WorkManagerReplicatorFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed creating factory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Factory class name is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p1, "Background replicator "

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "com.couchbase.mobile.android.replicator.ID"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/ReplicatorWorker;->getFactory(Ljava/lang/String;)Lcom/couchbase/lite/WorkManagerReplicatorFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/couchbase/lite/WorkManagerReplicatorFactory;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has tag: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/couchbase/lite/WorkManagerReplicatorFactory;->getConfig()Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->getConfig()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setContinuous(Z)Lcom/couchbase/lite/ReplicatorConfiguration;

    const v1, 0x20c49b

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setHeartbeat(I)Lcom/couchbase/lite/ReplicatorConfiguration;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setMaxAttempts(I)Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {v0, v10}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setMaxAttemptWaitTime(I)Lcom/couchbase/lite/ReplicatorConfiguration;

    new-instance v1, Lcom/couchbase/lite/Replicator;

    invoke-direct {v1, v0}, Lcom/couchbase/lite/Replicator;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1, v11, v10, v11}, Lcom/couchbase/lite/CommonFlowsKt;->replicatorChangesFlow$default(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v10, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v13, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2;

    const/4 v6, 0x0

    move-object v0, v13

    move-object v1, v7

    move-object v2, v8

    move-object v4, v12

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/couchbase/lite/internal/ReplicatorWorker$doWork$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/couchbase/lite/internal/ReplicatorWorker;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, v13, v10, v11}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    iget-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    :goto_0
    const-string v1, "override suspend fun doW\u2026l?.stop()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/couchbase/lite/Replicator;

    if-eqz p0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicator;->stop()V

    goto :goto_2

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not get configuration from factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/couchbase/lite/internal/ReplicatorWorker;->buildData(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/work/ListenableWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object p0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string p0, "{\n            setProgres\u2026esult.failure()\n        }"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/couchbase/lite/Replicator;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    iget-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/couchbase/lite/Replicator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicator;->stop()V

    :cond_3
    throw p0
.end method
