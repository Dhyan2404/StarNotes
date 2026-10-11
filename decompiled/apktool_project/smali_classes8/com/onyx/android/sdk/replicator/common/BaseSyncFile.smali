.class public abstract Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0011\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008%\u0010&J\u0008\u0010\u0003\u001a\u00020\u0002H&J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H&J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007J0\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000cR\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R#\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010 \u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\"\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001fR\u0011\u0010$\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u001f\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;",
        "",
        "",
        "filePrefix",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
        "makeSyncDataBean",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        "summary",
        "",
        "collectCloudFileSummary",
        "revisionId",
        "",
        "recordType",
        "localFilePath",
        "ossFilePath",
        "syncStatus",
        "createSyncDataBean",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "a",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "dataReplicator",
        "",
        "b",
        "Ljava/util/Map;",
        "getCloudSummaryMap",
        "()Ljava/util/Map;",
        "cloudSummaryMap",
        "c",
        "Ljava/lang/String;",
        "getOssFilePrefix",
        "()Ljava/lang/String;",
        "ossFilePrefix",
        "getSyncUserId",
        "syncUserId",
        "getDocumentId",
        "documentId",
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


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dataReplicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->a:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->b:Ljava/util/Map;

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossDocDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossPathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final collectCloudFileSummary(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)V
    .locals 13
    .param p1    # Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "summary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v0, "getKey(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getOssFilePrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->filePrefix()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v7, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->filePrefix()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final createSyncDataBean(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "localFilePath"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ossFilePath"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;-><init>()V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->setRecordType(I)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->setRecordId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->setSyncStatus(I)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->setLocalSavePath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->setOssFilePath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    move-result-object p0

    return-object p0
.end method

.method public abstract filePrefix()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getCloudSummaryMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->a:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOssFilePrefix()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->a:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public abstract makeSyncDataBean()Ljava/util/List;
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
.end method
