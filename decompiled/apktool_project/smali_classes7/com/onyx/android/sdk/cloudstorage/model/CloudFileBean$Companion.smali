.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "provider",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "createFromLocalFile",
        "filePath",
        "",
        "getCloudFilePath",
        "localFilePath",
        "updateFileInfo",
        "",
        "fileBean",
        "sdk-cloudstorage_release"
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
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 22
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "provider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x3fff

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-object v1
.end method

.method public final createFromLocalFile(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getProviderFromPath(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;->create(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setLocalFilePath(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Lonyx/org/apache/commons/io/FileUtils;->isDirectory(Ljava/io/File;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setDir(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setName(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setSyncStatus(Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;->getCloudFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setCloudFilePath(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getDir()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;->updateFileInfo(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getCloudFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "localFilePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getProviderFromPath(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getProviderRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "separator"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;->getCloudOnyxPath(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combinePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateFileInfo(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "fileBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "filePath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setSize(J)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeFullMD5Safely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setMd5(Ljava/lang/String;)V

    return-void
.end method
