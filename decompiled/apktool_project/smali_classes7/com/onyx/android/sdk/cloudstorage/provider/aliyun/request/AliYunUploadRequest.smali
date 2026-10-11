.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAliYunUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1#2:209\n766#3:210\n857#3,2:211\n288#3,2:213\n*S KotlinDebug\n*F\n+ 1 AliYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest\n*L\n131#1:210\n131#1:211,2\n132#1:213,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0017\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008#\u0010$J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010\u001c\u001a\u00020\u0004H\u0002R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;",
        "session",
        "e",
        "uploadedFileInfo",
        "d",
        "fileInfo",
        "j",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "",
        "h",
        "cloudFileBean",
        "i",
        "",
        "fileId",
        "",
        "g",
        "uploadSession",
        "k",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;",
        "part",
        "",
        "offset",
        "l",
        "f",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "provider",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "Companion",
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
        "SMAP\nAliYunUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1#2:209\n766#3:210\n857#3,2:211\n288#3,2:213\n*S KotlinDebug\n*F\n+ 1 AliYunUploadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest\n*L\n131#1:210\n131#1:211,2\n132#1:213,2\n*E\n"
    }
.end annotation


# static fields
.field public static final BLOCK_LENGTH:J = 0x200000L

.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method


# virtual methods
.method public final d(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->h(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->j(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;->setDriveId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->setUploadId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->getFileId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->setFileId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$completeUpload$1;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$completeUpload$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    return-object p0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->f()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->k(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->e(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->d(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createUploadSession start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDefaultDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;->setDriveId(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->normalizeToCloudParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;->setParentFileId(Ljava/lang/String;)V

    const-string v1, "auto_rename"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;->setCheckNameMode(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->setPartInfoList(Ljava/util/List;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v1

    invoke-static {v3, v1, v2}, Lkotlin/ranges/RangesKt;->until(IJ)Lkotlin/ranges/LongRange;

    move-result-object v1

    const-wide/32 v4, 0x200000

    invoke-static {v1, v4, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/LongProgression;->getFirst()J

    move-result-wide v4

    invoke-virtual {v1}, Lkotlin/ranges/LongProgression;->getLast()J

    move-result-wide v6

    invoke-virtual {v1}, Lkotlin/ranges/LongProgression;->getStep()J

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_0

    cmp-long v9, v4, v6

    if-lez v9, :cond_1

    :cond_0
    if-gez v8, :cond_2

    cmp-long v8, v6, v4

    if-gtz v8, :cond_2

    :cond_1
    :goto_0
    new-instance v8, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;

    invoke-direct {v8}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->getPartInfoList()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->setPartNumber(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->getPartInfoList()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    add-long/2addr v4, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$createUploadSession$sessionResult$1;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$createUploadSession$sessionResult$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUploadSession finish: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDefaultDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->setDriveId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->setFileId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$deleteAliYunFile$1;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$deleteAliYunFile$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    return-void
.end method

.method public final h(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Z
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

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->g(Ljava/lang/String;)V

    :cond_5
    return v2

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->i(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

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
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->getFileId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->g(Ljava/lang/String;)V

    :cond_9
    return v2
.end method

.method public final i(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setQuery(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getParentFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setPrecisionSearch(Z)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;->from(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$findOldCloudFile$result$1;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$findOldCloudFile$result$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    check-cast v3, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getParentFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getParentFileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p2

    :cond_4
    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    return-object v1
.end method

.method public final j(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->setDriveId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->getFileId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->setFileId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$renameCloudFile$1;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$renameCloudFile$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

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

    const-wide/32 v3, 0x200000

    invoke-static {v0, v3, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->getFirst()J

    move-result-wide v3

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->getLast()J

    move-result-wide v5

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->getStep()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_0

    cmp-long v8, v3, v5

    if-lez v8, :cond_1

    :cond_0
    if-gez v7, :cond_2

    cmp-long v7, v5, v3

    if-gtz v7, :cond_2

    :cond_1
    :goto_0
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->getPartInfoList()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;

    invoke-virtual {p0, v2, v3, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->l(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;J)V

    cmp-long v2, v3, v5

    if-eqz v2, :cond_2

    add-long/2addr v3, v0

    move v2, v7

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;

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

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const-wide/32 v8, 0x200000

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getBlock(Ljava/lang/String;JJ)[B

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object v2

    new-instance v4, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$uploadBlock$1$1;

    invoke-direct {v4, p1, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$uploadBlock$1$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;[B)V

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadBlock finish: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
