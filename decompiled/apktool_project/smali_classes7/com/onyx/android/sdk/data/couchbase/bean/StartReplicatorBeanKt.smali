.class public final Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBeanKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "copyFrom",
        "",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "replicatorBean",
        "merge",
        "sdk-data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final copyFrom(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getTriggerSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setTriggerSource(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getForce()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setForce(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getResetCheckpoint()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setResetCheckpoint(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncAll()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncAll(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncDocIdList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getLibraryDocIdList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setLibraryDocIdList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getEnableLog()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setEnableLog(Z)V

    return-void
.end method

.method public static final merge(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getTriggerSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setTriggerSource(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getForce()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getForce()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setForce(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getResetCheckpoint()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getResetCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setResetCheckpoint(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncAll()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncAll()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    :goto_5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncAll(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getLibraryDocIdList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getLibraryDocIdList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getEnableLog()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getEnableLog()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setEnableLog(Z)V

    return-void
.end method
