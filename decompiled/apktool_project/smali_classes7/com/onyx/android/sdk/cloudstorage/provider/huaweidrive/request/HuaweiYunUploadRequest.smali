.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHuaweiYunUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1#2:204\n766#3:205\n857#3,2:206\n288#3,2:208\n*S KotlinDebug\n*F\n+ 1 HuaweiYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest\n*L\n119#1:205\n119#1:206,2\n121#1:208,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u001a\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0008H\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0008\u0010\u0019\u001a\u00020\u0012H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;",
        "execute",
        "uploadedFileInfo",
        "d",
        "fileInfo",
        "j",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "",
        "g",
        "cloudFileBean",
        "i",
        "",
        "fileId",
        "",
        "h",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;",
        "uploadSession",
        "e",
        "k",
        "",
        "offset",
        "l",
        "f",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "huaweiYunProvider",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "sdk-cloudstorage_release"
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
        "SMAP\nHuaweiYunUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1#2:204\n766#3:205\n857#3,2:206\n288#3,2:208\n*S KotlinDebug\n*F\n+ 1 HuaweiYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest\n*L\n119#1:205\n119#1:206,2\n121#1:208,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "huaweiYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method


# virtual methods
.method public final d(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->g(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->j(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$completeUpload$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$completeUpload$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    return-object p0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->f()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->k(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->e(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->d(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createUploadSession start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->normalizeToCloudParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->mimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_RFC3339()Ljava/text/SimpleDateFormat;

    move-result-object v5

    iget-object v8, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "format(...)"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_RFC3339()Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v9, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;

    move-result-object p0

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;JLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;

    invoke-virtual {p0}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    const-string v1, "Location"

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;->setLocation(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;->parse(Lretrofit2/Response;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    throw p0
.end method

.method public final g(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfoByLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, p2

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getSyncStatus()Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    if-eq v3, v4, :cond_6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->h(Ljava/lang/String;)V

    :cond_5
    return v2

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->i(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getSyncStatus()Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    if-ne p0, p1, :cond_7

    move v1, v2

    :cond_7
    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->h(Ljava/lang/String;)V

    return v2
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$deleteHuaweiYunFile$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$deleteHuaweiYunFile$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getParentFolder()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setQuery(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->normalizeToDBParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setPrecisionSearch(Z)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs$Companion;->from(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$findOldCloudFile$result$1;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$findOldCloudFile$result$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult;->getFiles()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getParentFolder()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p2

    :cond_4
    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    return-object v1
.end method

.method public final j(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUpdateParam;

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUpdateParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$renameCloudFile$1;

    invoke-direct {v0, p1, v6}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$renameCloudFile$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUpdateParam;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setTotalBytes(J)V

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lkotlin/ranges/RangesKt;->until(IJ)Lkotlin/ranges/LongRange;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;->getSliceSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->getFirst()J

    move-result-wide v1

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->getLast()J

    move-result-wide v3

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->getStep()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    :cond_0
    if-gez v0, :cond_2

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->l(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;J)V

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    add-long/2addr v1, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;J)V
    .locals 12

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadBlock start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v10

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;->getSliceSize()J

    move-result-wide v8

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getBlock(Ljava/lang/String;JJ)[B

    move-result-object v2

    array-length v4, v2

    int-to-long v4, v4

    add-long/2addr v4, p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v4, v10

    sub-long v4, p2, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;

    move-result-object p0

    new-instance v5, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$uploadBlock$1$1;

    invoke-direct {v5, p1, v2, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$uploadBlock$1$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;[BLjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "uploadBlock finish: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
