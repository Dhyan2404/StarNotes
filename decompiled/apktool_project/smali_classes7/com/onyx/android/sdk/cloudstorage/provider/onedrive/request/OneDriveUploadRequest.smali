.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\"\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R$\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00028\u0006@BX\u0086.\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u000b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;",
        "d",
        "uploadSession",
        "",
        "f",
        "",
        "fileLength",
        "",
        "offset",
        "g",
        "",
        "data",
        "Lokhttp3/RequestBody;",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "oneDriveProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "<set-?>",
        "c",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "getFileInfo",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "fileInfo",
        "I",
        "blockLength",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oneDriveProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    const/high16 p1, 0x320000

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->d:I

    return-void
.end method


# virtual methods
.method public final d()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createUploadSession start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;

    invoke-direct {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;->getItem()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;->setName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;->getOneDriveService()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;

    move-result-object v4

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;->createUploadSession(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUploadSession finish: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;->parseError(Lretrofit2/Response;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    throw p0
.end method

.method public final e([B)Lokhttp3/RequestBody;
    .locals 7

    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->d()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->f(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->getFileInfo()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setTotalBytes(J)V

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->g(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;JI)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;

    iget v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->d:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;JI)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadBlock start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v4

    int-to-long v12, v1

    invoke-virtual {v0, v4, v12, v13}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    sget-object v6, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v4, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->d:I

    int-to-long v10, v4

    move-wide v8, v12

    invoke-virtual/range {v6 .. v11}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getBlock(Ljava/lang/String;JJ)[B

    move-result-object v4

    array-length v6, v4

    int-to-long v6, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x1

    sub-long v9, v6, v9

    add-long/2addr v12, v9

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " contentRange: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v8, v9}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;->getOneDriveUploadService()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;->getUploadUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->e([B)Lokhttp3/RequestBody;

    move-result-object v19

    move-wide/from16 v16, v6

    move-object/from16 v18, v1

    invoke-interface/range {v14 .. v19}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;->upload(Ljava/lang/String;JLjava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;

    invoke-direct {v4}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;-><init>()V

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/ResponseBody;

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v7

    const/16 v8, 0xc9

    if-eq v7, v8, :cond_1

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;

    invoke-virtual {v0, v6, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v7, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    invoke-virtual {v1, v6, v7}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    iput-object v1, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->c:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadBlock finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, v6}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;->parseError(Lretrofit2/Response;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object v0

    throw v0
.end method

.method public final getFileInfo()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;->c:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fileInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
