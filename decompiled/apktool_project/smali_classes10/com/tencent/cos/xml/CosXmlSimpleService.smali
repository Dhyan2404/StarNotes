.class public Lcom/tencent/cos/xml/CosXmlSimpleService;
.super Lcom/tencent/cos/xml/CosXmlBaseService;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/SimpleCosXml;


# static fields
.field private static final TAG:Ljava/lang/String; = "CosXmlSimpleService"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "cos"

    sput-object v0, Lcom/tencent/cos/xml/common/VersionInfo;->sdkName:Ljava/lang/String;

    const-string v0, "5.9.32"

    sput-object v0, Lcom/tencent/cos/xml/common/VersionInfo;->versionName:Ljava/lang/String;

    const v0, 0xc6f4

    sput v0, Lcom/tencent/cos/xml/common/VersionInfo;->versionCode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/CosXmlBaseService;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/CosXmlBaseService;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudSigner;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/CosXmlBaseService;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudSigner;)V

    return-void
.end method


# virtual methods
.method public abortMultiUpload(Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/AbortMultiUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/AbortMultiUploadResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/AbortMultiUploadResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/AbortMultiUploadResult;

    return-object p0
.end method

.method public abortMultiUploadAsync(Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/model/object/AbortMultiUploadResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/AbortMultiUploadResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public completeMultiUpload(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    return-object p0
.end method

.method public completeMultiUploadAsync(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public copyObject(Lcom/tencent/cos/xml/model/object/CopyObjectRequest;)Lcom/tencent/cos/xml/model/object/CopyObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/CopyObjectResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    return-object p0
.end method

.method public copyObject(Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;)Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;

    return-object p0
.end method

.method public copyObjectAsync(Lcom/tencent/cos/xml/model/object/CopyObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/CopyObjectResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public copyObjectAsync(Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public deleteObject(Lcom/tencent/cos/xml/model/object/DeleteObjectRequest;)Lcom/tencent/cos/xml/model/object/DeleteObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/DeleteObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/DeleteObjectResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/DeleteObjectResult;

    return-object p0
.end method

.method public deleteObjectAsync(Lcom/tencent/cos/xml/model/object/DeleteObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/model/object/DeleteObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/DeleteObjectResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public headObject(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/HeadObjectResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    return-object p0
.end method

.method public headObjectAsync(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/HeadObjectResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public initMultipartUpload(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    return-object p0
.end method

.method public initMultipartUploadAsync(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public internalCopyObjectAsync(Lcom/tencent/cos/xml/model/object/CopyObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/CopyObjectResult;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;Z)V

    return-void
.end method

.method public internalPutObjectAsync(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/object/PutObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/PutObjectResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;Z)V

    return-void
.end method

.method public listMultiUploads(Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;)Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;

    return-object p0
.end method

.method public listMultiUploadsAsync(Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public listParts(Lcom/tencent/cos/xml/model/object/ListPartsRequest;)Lcom/tencent/cos/xml/model/object/ListPartsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/ListPartsResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/ListPartsResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/ListPartsResult;

    return-object p0
.end method

.method public listPartsAsync(Lcom/tencent/cos/xml/model/object/ListPartsRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/model/object/ListPartsResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/ListPartsResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public preBuildConnection(Lcom/tencent/cos/xml/model/object/PreBuildConnectionRequest;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lcom/tencent/cos/xml/model/object/PreBuildConnectionResult;

    invoke-direct {v2}, Lcom/tencent/cos/xml/model/object/PreBuildConnectionResult;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/cos/xml/exception/CosXmlServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getStatusCode()I

    move-result p0

    const/16 p1, 0x194

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_1
    return v1
.end method

.method public preBuildConnection(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/xml/model/object/PreBuildConnectionRequest;

    invoke-direct {v0, p1}, Lcom/tencent/cos/xml/model/object/PreBuildConnectionRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Lcom/tencent/cos/xml/model/object/PreBuildConnectionResult;

    invoke-direct {v2}, Lcom/tencent/cos/xml/model/object/PreBuildConnectionResult;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/cos/xml/exception/CosXmlServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getStatusCode()I

    move-result p0

    const/16 v0, 0x194

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    return p1

    :catch_1
    return v1
.end method

.method public preBuildConnectionAsync(Lcom/tencent/cos/xml/model/object/PreBuildConnectionRequest;Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/tencent/cos/xml/model/object/PreBuildConnectionResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/PreBuildConnectionResult;-><init>()V

    new-instance v1, Lcom/tencent/cos/xml/CosXmlSimpleService$2;

    invoke-direct {v1, p0, p2}, Lcom/tencent/cos/xml/CosXmlSimpleService$2;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public preBuildConnectionAsync(Ljava/lang/String;Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/cos/xml/model/object/PreBuildConnectionRequest;

    invoke-direct {v0, p1}, Lcom/tencent/cos/xml/model/object/PreBuildConnectionRequest;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/tencent/cos/xml/model/object/PreBuildConnectionResult;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/object/PreBuildConnectionResult;-><init>()V

    new-instance v1, Lcom/tencent/cos/xml/CosXmlSimpleService$1;

    invoke-direct {v1, p0, p2}, Lcom/tencent/cos/xml/CosXmlSimpleService$1;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public putObject(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/PutObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/PutObjectResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/PutObjectResult;

    return-object p0
.end method

.method public putObjectAsync(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/object/PutObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/PutObjectResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public setCopySource(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            ">(TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->setCopySource(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;->getCopySource()Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p1, v0, p0}, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;->setCopySource(Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V

    :cond_0
    return-void
.end method

.method public setProgressListener(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/http/HttpTask;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "T2:",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">(TT1;",
            "Lcom/tencent/qcloud/core/http/HttpTask<",
            "TT2;>;Z)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/cos/xml/CosXmlBaseService;->setProgressListener(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/http/HttpTask;Z)V

    instance-of p0, p1, Lcom/tencent/cos/xml/model/object/AppendObjectRequest;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/tencent/cos/xml/model/object/AppendObjectRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/AppendObjectRequest;->getProgressListener()Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->addProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)Lcom/tencent/qcloud/core/task/QCloudTask;

    :cond_0
    return-void
.end method
