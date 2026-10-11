.class public final Lcom/onyx/android/sdk/replicator/replicator/file/ResourceDataSyncFile;
.super Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016JF\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0002J$\u0010\u0013\u001a\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00112\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/file/ResourceDataSyncFile;",
        "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;",
        "",
        "filePrefix",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
        "makeSyncDataBean",
        "",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        "cloudFileMap",
        "",
        "localFileNames",
        "",
        "cloudOnly",
        "localOnly",
        "",
        "a",
        "",
        "syncDataBeans",
        "b",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "dataReplicator",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
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
.method public final a(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appResourceDataDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ".pcm"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combinePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getSize()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getSize()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils;->loadRemovedResourceModel(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v2, Lcom/onyx/android/sdk/replicator/replicator/file/ResourceDataSyncFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete cloud file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v4, 0x4

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appResourceDataFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getSyncUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6, v3}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->resourceDataOssFileKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossPathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->createSyncDataBean(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public filePrefix()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "resource"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data"

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

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appDocResourceDataFileNameList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->diff(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getCloudSummaryMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/replicator/replicator/file/ResourceDataSyncFile;->a(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p0, v0, v3}, Lcom/onyx/android/sdk/replicator/replicator/file/ResourceDataSyncFile;->b(Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v6}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appResourceDataFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

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

    invoke-virtual {v2, v3, v5, v6}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->resourceDataOssFileKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

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
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x4

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appResourceDataFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

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

    invoke-virtual {v2, v3, v7, v4}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->resourceDataOssFileKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

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
