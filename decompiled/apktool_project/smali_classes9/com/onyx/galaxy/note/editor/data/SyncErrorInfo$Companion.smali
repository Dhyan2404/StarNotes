.class public final Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncErrorInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncErrorInfo.kt\ncom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2:101\n1747#2,3:102\n1747#2,3:105\n1747#2,3:108\n1856#2:111\n*S KotlinDebug\n*F\n+ 1 SyncErrorInfo.kt\ncom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion\n*L\n63#1:101\n74#1:102,3\n83#1:105,3\n85#1:108,3\n63#1:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u0004\u0018\u00010\u0008*\u0004\u0018\u00010\u0002J\u000c\u0010\u000b\u001a\u00020\u0002*\u0004\u0018\u00010\nJ\u000e\u0010\u000c\u001a\u0004\u0018\u00010\u0008*\u00020\u0002H\u0002R\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;",
        "",
        "Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;",
        "unknownError",
        "",
        "type",
        "",
        "canRetry",
        "",
        "getErrorCodeMsg",
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
        "createSyncErrorInfo",
        "a",
        "NETWORK_BAD",
        "I",
        "NETWORK_ERROR_WITH_RETRY",
        "SYNC_ERROR_WITH_RETRY",
        "SYNC_ERROR_WITH_SERVICE",
        "UNKNOWN_ERROR",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSyncErrorInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncErrorInfo.kt\ncom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2:101\n1747#2,3:102\n1747#2,3:105\n1747#2,3:108\n1856#2:111\n*S KotlinDebug\n*F\n+ 1 SyncErrorInfo.kt\ncom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion\n*L\n63#1:101\n74#1:102,3\n83#1:105,3\n85#1:108,3\n63#1:111\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->getSyncType()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 p1, 0xd

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->sync_unknown_error:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->replicator_sync_error:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->content_sync_error:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final canRetry(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public final createSyncErrorInfo(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;->unknownError()Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setType(I)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->getSyncStatusSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncFail()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getErrorTypeList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->getSyncType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setSyncType(I)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->getSyncType()I

    move-result p0

    const/4 p1, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_a

    const/16 v4, 0xd

    if-eq p0, v4, :cond_5

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->Companion:Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;->unknownError()Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;

    move-result-object p0

    return-object p0

    :cond_5
    move-object p0, v2

    check-cast p0, Ljava/lang/Iterable;

    instance-of v4, p0, Ljava/util/Collection;

    if-eqz v4, :cond_7

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->Companion:Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError$Companion;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError$Companion;->isNetworkError(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setType(I)V

    goto :goto_2

    :cond_9
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setCode(I)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setType(I)V

    :goto_2
    return-object v0

    :cond_a
    move-object p0, v2

    check-cast p0, Ljava/lang/Iterable;

    instance-of v4, p0, Ljava/util/Collection;

    if-eqz v4, :cond_c

    move-object v5, p0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move v5, v3

    goto :goto_3

    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sget-object v7, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->isNetworkError(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v1

    :goto_3
    if-eqz v5, :cond_e

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setType(I)V

    goto :goto_5

    :cond_e
    if-eqz v4, :cond_f

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_4

    :cond_f
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->canRetryError(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move v3, v1

    :cond_11
    :goto_4
    if-eqz v3, :cond_12

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setType(I)V

    goto :goto_5

    :cond_12
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setCode(I)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->setType(I)V

    :goto_5
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;->unknownError()Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getErrorCodeMsg(Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->getCode()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getUSER_STORAGE_TOO_LOW()I

    move-result v2

    if-ne v0, v2, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->min_user_storage_tips:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserStorageBean()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->getStorageRedMB()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getPUSH_DATA_ERROR()I

    move-result v2

    if-ne v0, v2, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->sync_pull_error:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getPULL_DATA_ERROR()I

    move-result v2

    if-ne v0, v2, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->sync_push_error:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getNETWORK_ERROR()I

    move-result v2

    if-ne v0, v2, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->network_error_hint:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getTIMEOUT_ERROR()I

    move-result v2

    if-ne v0, v2, :cond_6

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->network_socket_timeout:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getUNKNOWN_ERROR()I

    move-result v1

    if-ne v0, v1, :cond_7

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$string;->sync_unknown_error:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;->a(Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final unknownError()Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;-><init>()V

    return-object p0
.end method
