.class public final Lcom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/WorkManagerReplicatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkManagerReplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkManagerReplication.kt\ncom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n+ 3 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,213:1\n104#2:214\n253#3:215\n233#3,6:216\n*S KotlinDebug\n*F\n+ 1 WorkManagerReplication.kt\ncom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls\n*L\n66#1:214\n75#1:215\n86#1:216,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWorkManagerReplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkManagerReplication.kt\ncom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n+ 3 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,213:1\n104#2:214\n253#3:215\n233#3,6:216\n*S KotlinDebug\n*F\n+ 1 WorkManagerReplication.kt\ncom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls\n*L\n66#1:214\n75#1:215\n86#1:216,6\n*E\n"
    }
.end annotation


# direct methods
.method private static buildRequest(Lcom/couchbase/lite/WorkManagerReplicatorFactory;Landroidx/work/WorkRequest$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/WorkManagerReplicatorFactory;",
            "Landroidx/work/WorkRequest$Builder<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/couchbase/lite/WorkManagerReplicatorFactory;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.couchbase.mobile.android.replicator.ID"

    invoke-virtual {v0, v1, p0}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p0

    const-string v0, "Builder()\n              \u2026                 .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    return-void
.end method

.method public static oneTimeWorkRequestBuilder(Lcom/couchbase/lite/WorkManagerReplicatorFactory;)Landroidx/work/OneTimeWorkRequest$Builder;
    .locals 2
    .param p0    # Lcom/couchbase/lite/WorkManagerReplicatorFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/couchbase/lite/internal/ReplicatorWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls;->buildRequest(Lcom/couchbase/lite/WorkManagerReplicatorFactory;Landroidx/work/WorkRequest$Builder;)V

    return-object v0
.end method

.method public static periodicWorkRequestBuilder(Lcom/couchbase/lite/WorkManagerReplicatorFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 9
    .param p0    # Lcom/couchbase/lite/WorkManagerReplicatorFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "repeatIntervalTimeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexIntervalTimeUnit"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v2, Lcom/couchbase/lite/internal/ReplicatorWorker;

    move-object v1, v0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    .line 4
    invoke-static {p0, v0}, Lcom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls;->buildRequest(Lcom/couchbase/lite/WorkManagerReplicatorFactory;Landroidx/work/WorkRequest$Builder;)V

    return-object v0
.end method

.method public static periodicWorkRequestBuilder(Lcom/couchbase/lite/WorkManagerReplicatorFactory;Ljava/time/Duration;Ljava/time/Duration;)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 2
    .param p0    # Lcom/couchbase/lite/WorkManagerReplicatorFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "repeatInterval"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexInterval"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v1, Lcom/couchbase/lite/internal/ReplicatorWorker;

    invoke-direct {v0, v1, p1, p2}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;Ljava/time/Duration;Ljava/time/Duration;)V

    .line 2
    invoke-static {p0, v0}, Lcom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls;->buildRequest(Lcom/couchbase/lite/WorkManagerReplicatorFactory;Landroidx/work/WorkRequest$Builder;)V

    return-object v0
.end method

.method public static synthetic periodicWorkRequestBuilder$default(Lcom/couchbase/lite/WorkManagerReplicatorFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 7

    if-nez p8, :cond_2

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    move-wide v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x8

    if-eqz p4, :cond_1

    move-object v6, p3

    goto :goto_1

    :cond_1
    move-object v6, p6

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/WorkManagerReplicatorFactory;->periodicWorkRequestBuilder(JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)Landroidx/work/PeriodicWorkRequest$Builder;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: periodicWorkRequestBuilder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic periodicWorkRequestBuilder$default(Lcom/couchbase/lite/WorkManagerReplicatorFactory;Ljava/time/Duration;Ljava/time/Duration;ILjava/lang/Object;)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/WorkManagerReplicatorFactory;->periodicWorkRequestBuilder(Ljava/time/Duration;Ljava/time/Duration;)Landroidx/work/PeriodicWorkRequest$Builder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: periodicWorkRequestBuilder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
