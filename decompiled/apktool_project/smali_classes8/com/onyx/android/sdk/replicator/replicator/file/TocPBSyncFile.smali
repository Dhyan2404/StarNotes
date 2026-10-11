.class public final Lcom/onyx/android/sdk/replicator/replicator/file/TocPBSyncFile;
.super Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/file/TocPBSyncFile;",
        "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;",
        "dataReplicator",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V",
        "filePrefix",
        "",
        "makeSyncDataBean",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dataReplicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    return-void
.end method


# virtual methods
.method public filePrefix()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "toc"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pb"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeSyncDataBean()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getCloudSummaryMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TocPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TocPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/path/TocPaths;->appTocPBFileNameList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->diff(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x11

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TocPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TocPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/onyx/android/sdk/data/common/path/TocPaths;->appTocPBFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getSyncUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v6}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->tocPBOssFileKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossPathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->createSyncDataBean(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x11

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TocPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TocPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/data/common/path/TocPaths;->appTocPBFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getSyncUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7, v4}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->tocPBOssFileKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossPathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->createSyncDataBean(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method
