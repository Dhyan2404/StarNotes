.class public final Lcom/couchbase/lite/WorkManagerReplicationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0014\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toReplicatorStatus",
        "Lcom/couchbase/lite/ReplicatorStatus;",
        "Landroidx/work/Data;",
        "replId",
        "",
        "couchbase-lite-android-ee-ktx-3.2.2-21_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toReplicatorStatus(Landroidx/work/Data;Ljava/lang/String;)Lcom/couchbase/lite/ReplicatorStatus;
    .locals 7
    .param p0    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.couchbase.mobile.android.replicator.ID"

    invoke-virtual {p0, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/couchbase/lite/internal/ReplicatorWorker;->Companion:Lcom/couchbase/lite/internal/ReplicatorWorker$Companion;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ReplicatorWorker$Companion;->getActivityLevelFromString()Ljava/util/Map;

    move-result-object p1

    const-string v1, "com.couchbase.mobile.android.replicator.ACTIVITY_LEVEL"

    invoke-virtual {p0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/couchbase/lite/ReplicatorActivityLevel;

    new-instance v1, Lcom/couchbase/lite/ReplicatorProgress;

    const-string v2, "com.couchbase.mobile.android.replicator.progress.COMPLETED"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "com.couchbase.mobile.android.replicator.progress.TOTAL"

    invoke-virtual {p0, v2, v3, v4}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/couchbase/lite/ReplicatorProgress;-><init>(JJ)V

    const-string v2, "com.couchbase.mobile.android.replicator.error.MESSAGE"

    invoke-virtual {p0, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v3, "com.couchbase.mobile.android.replicator.error.CODE"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v3, "CouchbaseLite"

    invoke-direct {v0, v2, v3, p0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    new-instance p0, Lcom/couchbase/lite/ReplicatorStatus;

    invoke-direct {p0, p1, v1, v0}, Lcom/couchbase/lite/ReplicatorStatus;-><init>(Lcom/couchbase/lite/ReplicatorActivityLevel;Lcom/couchbase/lite/ReplicatorProgress;Lcom/couchbase/lite/CouchbaseLiteException;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method
