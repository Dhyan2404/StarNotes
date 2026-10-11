.class public final Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveSyncProgressRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSyncProgressRequest.kt\ncom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 SaveSyncProgressRequest.kt\ncom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest\n*L\n24#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
        "execute",
        "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;",
        "docProgressBean",
        "a",
        "Ljava/util/List;",
        "list",
        "<init>",
        "(Ljava/util/List;)V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nSaveSyncProgressRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSyncProgressRequest.kt\ncom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 SaveSyncProgressRequest.kt\ncom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest\n*L\n24#1:65,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;)Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getAccountId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    const/4 v4, 0x0

    if-nez v0, :cond_8

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserSyncProgressProvider(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;->loadSyncProgressModel(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->updateDocProgressBeanPushTime()V

    if-nez v2, :cond_6

    new-instance v2, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->setScope(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->getDocProgress()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_7

    new-instance v4, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    invoke-direct {v4}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;-><init>()V

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getSyncType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object p1

    invoke-virtual {v4, v1, p0, p1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->addSyncStatus(ILjava/lang/String;Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->setDocProgress(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->getSyncStatus()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->setSyncStatus(I)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;->saveSyncProgressModel(Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;)V

    return-object v2

    :cond_8
    :goto_3
    return-object v4
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    .line 5
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;->a(Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;)Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
