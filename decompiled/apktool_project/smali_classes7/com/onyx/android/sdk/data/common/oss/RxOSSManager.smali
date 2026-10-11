.class public final Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxOSSManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxOSSManager.kt\ncom/onyx/android/sdk/data/common/oss/RxOSSManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,468:1\n1#2:469\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020 H\u0002J\u0016\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006J\u000e\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&H\u0002J6\u0010(\u001a\u000e\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H+0)\"\u0008\u0008\u0000\u0010**\u00020,\"\u0008\u0008\u0001\u0010+*\u00020-2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H+0/H\u0002J,\u00100\u001a\u0008\u0012\u0004\u0012\u0002010&2\u0006\u0010\n\u001a\u00020\'2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u0006032\u0006\u00104\u001a\u000205H\u0002J\u000e\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u0006J,\u00109\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020;0:0&2\u0006\u0010\n\u001a\u00020\'2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010<\u001a\u00020\u0015H\u0002J\u001e\u0010=\u001a\u0008\u0012\u0004\u0012\u00020>0&2\u0006\u0010\n\u001a\u00020\'2\u0006\u0010<\u001a\u00020\u0015H\u0002J\u001e\u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0&2\u0006\u0010\n\u001a\u00020\'2\u0006\u0010A\u001a\u00020\u0019H\u0002J\u001e\u0010B\u001a\u0008\u0012\u0004\u0012\u00020C0&2\u0006\u0010\n\u001a\u00020\'2\u0006\u0010D\u001a\u00020\u001cH\u0002J\u001e\u0010E\u001a\u0008\u0012\u0004\u0012\u00020F0&2\u0006\u0010\n\u001a\u00020\'2\u0006\u0010G\u001a\u00020\u001fH\u0002J\u000e\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u0006J\"\u0010K\u001a\u0008\u0012\u0004\u0012\u0002010&2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u0006032\u0006\u00104\u001a\u000205J\u000e\u0010L\u001a\u0002052\u0006\u0010M\u001a\u00020\u0006J\u0008\u0010N\u001a\u00020\'H\u0002J\u0014\u0010O\u001a\u0008\u0012\u0004\u0012\u00020@0&2\u0006\u0010\u0012\u001a\u00020\u001aJ\u001a\u0010P\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020;0:0&2\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010Q\u001a\u00020\u00062\u0006\u0010R\u001a\u00020\u0006J\u000e\u0010S\u001a\u00020\u00062\u0006\u0010M\u001a\u00020\u0006J\u0018\u0010T\u001a\u00020\u001f2\u0006\u0010U\u001a\u00020\u00062\u0006\u0010V\u001a\u00020\u0006H\u0002J\u0014\u0010W\u001a\u0008\u0012\u0004\u0012\u00020C0&2\u0006\u0010\u0012\u001a\u00020\u001aJ\u000e\u0010X\u001a\u0002052\u0006\u0010Y\u001a\u00020\u0003JM\u0010Z\u001a\u00020[\"\u0008\u0008\u0000\u0010**\u00020,\"\u0008\u0008\u0001\u0010+*\u00020\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H+0/2\u0008\u0010\\\u001a\u0004\u0018\u0001H*2\u0008\u0010]\u001a\u0004\u0018\u00010^2\u0008\u0010_\u001a\u0004\u0018\u00010`H\u0002\u00a2\u0006\u0002\u0010aJ\u0010\u0010b\u001a\u0002012\u0006\u0010c\u001a\u000201H\u0002J\u001c\u0010d\u001a\u00020[2\u0008\u0010]\u001a\u0004\u0018\u00010^2\u0008\u0010_\u001a\u0004\u0018\u00010`H\u0002J\u0014\u0010e\u001a\u0008\u0012\u0004\u0012\u00020F0&2\u0006\u0010\u0012\u001a\u00020 J\u000e\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020\u0013J\u0014\u0010i\u001a\u0002012\u000c\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\u000603J\u000e\u0010k\u001a\u00020@2\u0006\u0010\u0012\u001a\u00020\u001aJ\u0014\u0010l\u001a\u0008\u0012\u0004\u0012\u00020;0:2\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010m\u001a\u00020C2\u0006\u0010\u0012\u001a\u00020\u001aJJ\u0010n\u001a\u0002072\u0006\u0010\u0012\u001a\u00020 2:\u0008\u0002\u0010o\u001a4\u0012\u0013\u0012\u00110q\u00a2\u0006\u000c\u0008r\u0012\u0008\u0008s\u0012\u0004\u0008\u0008(t\u0012\u0013\u0012\u00110q\u00a2\u0006\u000c\u0008r\u0012\u0008\u0008s\u0012\u0004\u0008\u0008(u\u0012\u0004\u0012\u00020[\u0018\u00010pJ\u0018\u0010v\u001a\u0004\u0018\u00010\u00062\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\u001fJ\u0018\u0010v\u001a\u0004\u0018\u00010\u00062\u0006\u0010w\u001a\u00020x2\u0006\u0010V\u001a\u00020\u0006J*\u0010v\u001a\u0004\u0018\u00010\u00062\u0006\u0010w\u001a\u00020x2\u0006\u0010U\u001a\u00020\u00062\u0006\u0010V\u001a\u00020\u00062\u0008\u0010z\u001a\u0004\u0018\u00010{R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\t\u00a8\u0006|"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "",
        "ossConfig",
        "Lcom/onyx/android/sdk/data/common/oss/OssConfig;",
        "(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V",
        "clientEndPoint",
        "",
        "ossBucketName",
        "getOssBucketName",
        "()Ljava/lang/String;",
        "ossClient",
        "Lcom/alibaba/sdk/android/oss/OSSClient;",
        "getOssConfig",
        "()Lcom/onyx/android/sdk/data/common/oss/OssConfig;",
        "ossEndPoint",
        "getOssEndPoint",
        "buildAppendObjectResult",
        "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
        "objectBean",
        "Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;",
        "buildGetObjectListRequest",
        "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
        "listObjectBean",
        "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;",
        "buildGetObjectRequest",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
        "Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;",
        "buildHeadObjectRequest",
        "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
        "buildOssClient",
        "buildPutObjectRequest",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        "Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;",
        "copySmallFile",
        "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
        "sourceKey",
        "destKey",
        "createClientObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/alibaba/sdk/android/oss/OSS;",
        "createCompletedCallback",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;",
        "R",
        "T",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        "subject",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "createDeleteMultipleObjectObservable",
        "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
        "objectKeys",
        "",
        "isQuiet",
        "",
        "createFolder",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
        "ossObjectKey",
        "createGetListObjectObservable",
        "",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        "listObjectsRequest",
        "createGetListObjectObservableImpl",
        "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
        "createGetObjectObservable",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
        "getObjectRequest",
        "createHeadObjectObservable",
        "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
        "headObjectRequest",
        "createPutObjectObservable",
        "Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;",
        "putObjectRequest",
        "deleteFile",
        "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
        "ossFileObjectKey",
        "deleteMultipleObject",
        "doesObjectExist",
        "objectKey",
        "ensureOssClient",
        "getObject",
        "getObjectList",
        "getOssFileObjectKey",
        "fileName",
        "getOssUrl",
        "getPutObjectRequest",
        "bucketName",
        "uploadFilePath",
        "headObject",
        "isOssConfigChanged",
        "config",
        "onFailure",
        "",
        "request",
        "clientException",
        "Lcom/alibaba/sdk/android/oss/ClientException;",
        "serviceException",
        "Lcom/alibaba/sdk/android/oss/ServiceException;",
        "(Lio/reactivex/rxjava3/subjects/Subject;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V",
        "printDeleteResult",
        "result",
        "printException",
        "putObject",
        "syncAppendObject",
        "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
        "appendObjectBean",
        "syncDeleteMultipleObjects",
        "ossObjectKeyList",
        "syncGetObject",
        "syncGetObjectList",
        "syncHeadObject",
        "syncPutObject",
        "func",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "currentSize",
        "totalSize",
        "syncUploadFile",
        "context",
        "Landroid/content/Context;",
        "putRequest",
        "metadata",
        "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRxOSSManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxOSSManager.kt\ncom/onyx/android/sdk/data/common/oss/RxOSSManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,468:1\n1#2:469\n*E\n"
    }
.end annotation


# instance fields
.field private clientEndPoint:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ossBucketName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ossClient:Lcom/alibaba/sdk/android/oss/OSSClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ossEndPoint:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ossConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getEndPoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossEndPoint:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getBucketName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getEndPoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->clientEndPoint:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildOssClient(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossClient:Lcom/alibaba/sdk/android/oss/OSSClient;

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createPutObjectObservable$lambda$5(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    return-void
.end method

.method public static final synthetic access$buildGetObjectListRequest(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildGetObjectListRequest(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildGetObjectRequest(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildGetObjectRequest(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildHeadObjectRequest(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildHeadObjectRequest(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildPutObjectRequest(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;)Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildPutObjectRequest(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;)Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDeleteMultipleObjectObservable(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createDeleteMultipleObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createGetListObjectObservable(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createGetListObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createGetListObjectObservableImpl(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createGetListObjectObservableImpl(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createGetObjectObservable(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createGetObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createHeadObjectObservable(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createHeadObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPutObjectObservable(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createPutObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureOssClient(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)Lcom/alibaba/sdk/android/oss/OSS;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFailure(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lio/reactivex/rxjava3/subjects/Subject;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->onFailure(Lio/reactivex/rxjava3/subjects/Subject;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public static final synthetic access$printDeleteResult(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->printDeleteResult(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createGetObjectObservable$lambda$9(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    return-void
.end method

.method private final buildAppendObjectResult(Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;)Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;
    .locals 3

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;->getOssFileObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;->getUploadData()[B

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setPosition(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    return-object v0
.end method

.method private final buildGetObjectListRequest(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;->updateListObjectsRequest(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)V

    return-object v0
.end method

.method private final buildGetObjectRequest(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;->getOssFileObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;->getRange()Lcom/alibaba/sdk/android/oss/model/Range;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;->getRange()Lcom/alibaba/sdk/android/oss/model/Range;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->setRange(Lcom/alibaba/sdk/android/oss/model/Range;)V

    :cond_0
    return-object v0
.end method

.method private final buildHeadObjectRequest(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;->getOssFileObjectKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final buildOssClient(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)Lcom/alibaba/sdk/android/oss/OSSClient;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;-><init>(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V

    invoke-static {}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->isChineseCluster()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setHttpDnsEnable(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getEndPoint()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->clientEndPoint:Ljava/lang/String;

    new-instance p1, Lcom/alibaba/sdk/android/oss/OSSClient;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->clientEndPoint:Ljava/lang/String;

    invoke-direct {p1, v2, p0, v0, v1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    return-object p1
.end method

.method private final buildPutObjectRequest(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;)Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
    .locals 3

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;->getOssFileObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;->getUploadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic c(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createGetListObjectObservableImpl$lambda$7(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    return-void
.end method

.method private final createClientObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createClientObservable$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createClientObservable$1;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final createCompletedCallback(Lio/reactivex/rxjava3/subjects/Subject;)Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
            "T:",
            "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
            ">(",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "TT;>;)",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "TR;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1;-><init>(Lio/reactivex/rxjava3/subjects/Subject;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V

    return-object v0
.end method

.method private final createDeleteMultipleObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v1, v2, p2, p3}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createCompletedCallback(Lio/reactivex/rxjava3/subjects/Subject;)Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/alibaba/sdk/android/oss/OSS;->asyncDeleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/jwl;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/jwl;-><init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnDispose(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createDeleteMultipleObjectObservable$lambda$8(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    return-void
.end method

.method private final createGetListObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$1;

    invoke-direct {v4, p0, p1, p3}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$1;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;

    invoke-direct {p1, v2, v0, p3}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;-><init>([Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;Ljava/util/List;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/gwl;

    invoke-direct {p1, v2}, Lcom/sunia/HTREnginev2/gwl;-><init>([Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;->getRetryTimes()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/core/Observable;->retry(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$4;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$4;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createGetListObjectObservable$lambda$6([Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Z
    .locals 1

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->isTruncated()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final createGetListObjectObservableImpl(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createCompletedCallback(Lio/reactivex/rxjava3/subjects/Subject;)Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/alibaba/sdk/android/oss/OSS;->asyncListObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/lwl;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/lwl;-><init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnDispose(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createGetListObjectObservableImpl$lambda$7(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    return-void
.end method

.method private final createGetObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createCompletedCallback(Lio/reactivex/rxjava3/subjects/Subject;)Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/alibaba/sdk/android/oss/OSS;->asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/iwl;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/iwl;-><init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnDispose(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createGetObjectObservable$lambda$9(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    return-void
.end method

.method private final createHeadObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createCompletedCallback(Lio/reactivex/rxjava3/subjects/Subject;)Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/alibaba/sdk/android/oss/OSS;->asyncHeadObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/hwl;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/hwl;-><init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnDispose(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createHeadObjectObservable$lambda$10(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    return-void
.end method

.method private final createPutObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/ewl;

    invoke-direct {v2, v0, v1}, Lcom/sunia/HTREnginev2/ewl;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;)V

    invoke-virtual {p2, v2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;

    invoke-direct {v1, v0, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V

    invoke-interface {p1, p2, v1}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/fwl;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/fwl;-><init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnDispose(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createPutObjectObservable$lambda$4(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 0

    const-string p2, "$subject"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$progress"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;->setCurrentSize(J)V

    invoke-virtual {p1, p5, p6}, Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;->setTotalSize(J)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static final createPutObjectObservable$lambda$5(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    return-void
.end method

.method public static synthetic d(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createPutObjectObservable$lambda$4(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function2;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncPutObject$lambda$0(Lkotlin/jvm/functions/Function2;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method

.method private final ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->clientEndPoint:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossEndPoint:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildOssClient(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossClient:Lcom/alibaba/sdk/android/oss/OSSClient;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossClient:Lcom/alibaba/sdk/android/oss/OSSClient;

    return-object p0
.end method

.method public static synthetic f(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createDeleteMultipleObjectObservable$lambda$8(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    return-void
.end method

.method public static synthetic g(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createHeadObjectObservable$lambda$10(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    return-void
.end method

.method private final getPutObjectRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getOssFileObjectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic h([Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createGetListObjectObservable$lambda$6([Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Z

    move-result p0

    return p0
.end method

.method private final onFailure(Lio/reactivex/rxjava3/subjects/Subject;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "TT;>;TR;",
            "Lcom/alibaba/sdk/android/oss/ClientException;",
            "Lcom/alibaba/sdk/android/oss/ServiceException;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->printException(Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    move-object p3, p4

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/Exception;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onFailure:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1, p3}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final printDeleteResult(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 6

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->getDeletedObjects()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    const/4 v0, 0x0

    const-class v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->getDeletedObjects()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->getFailedObjects()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->getFailedObjects()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private final printException(Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceException: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic syncPutObject$default(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncPutObject(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;Lkotlin/jvm/functions/Function2;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method private static final syncPutObject$lambda$0(Lkotlin/jvm/functions/Function2;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final copySmallFile(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sourceKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v1, p2}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/alibaba/sdk/android/oss/OSS;->copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;

    move-result-object p0

    const-string p1, "copyObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createFolder(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ossObjectKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;-><init>(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncPutObject$default(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public final deleteFile(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ossFileObjectKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/alibaba/sdk/android/oss/OSS;->deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;

    move-result-object p0

    const-string p1, "deleteObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final deleteMultipleObject(Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "objectKeys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createClientObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$2;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$2;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doesObjectExist(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const-string v0, "objectKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "objectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createClientObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObject$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObject$1;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getObjectList(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listObjectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createClientObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObjectList$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObjectList$1;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOssBucketName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    return-object p0
.end method

.method public final getOssEndPoint()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossEndPoint:Ljava/lang/String;

    return-object p0
.end method

.method public final getOssFileObjectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "fileName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "oss-objectKey"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getOssUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "objectKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossEndPoint:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->getUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getOssUrl$scheme$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getOssUrl$scheme$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossEndPoint:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final headObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "objectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createClientObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$headObject$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$headObject$1;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isOssConfigChanged(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->isChanged(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)Z

    move-result p0

    return p0
.end method

.method public final putObject(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "objectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createClientObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$putObject$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$putObject$1;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final syncAppendObject(Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "appendObjectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildAppendObjectResult(Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;)Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/alibaba/sdk/android/oss/OSS;->appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    move-result-object p0

    const-string p1, "appendObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final syncDeleteMultipleObjects(Ljava/util/List;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ossObjectKeyList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1, v2}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/alibaba/sdk/android/oss/OSS;->deleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;

    move-result-object p0

    const-string p1, "deleteMultipleObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final syncGetObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "objectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildGetObjectRequest(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/alibaba/sdk/android/oss/OSS;->getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    move-result-object p0

    const-string p1, "getObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final syncGetObjectList(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listObjectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildGetObjectListRequest(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;->getMarker()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/oss/OSS;->listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getObjectSummaries()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->isTruncated()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_1
    return-object v1

    :cond_1
    move-object p1, v2

    goto :goto_0
.end method

.method public final syncHeadObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "objectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildHeadObjectRequest(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/alibaba/sdk/android/oss/OSS;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object p0

    const-string p1, "headObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final syncPutObject(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;Lkotlin/jvm/functions/Function2;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "objectBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->buildPutObjectRequest(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;)Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/kwl;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/kwl;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    :cond_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ensureOssClient()Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    move-result-object p0

    const-string p1, "putObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final syncUploadFile(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "putRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossClient:Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/OSSClient;->putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->getStatusCode()I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final syncUploadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->ossBucketName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncUploadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final syncUploadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucketName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadFilePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getPutObjectRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    move-result-object p2

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p2, p4}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncUploadFile(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
