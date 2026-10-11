.class public final Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAliDocConvertor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliDocConvertor.kt\ncom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0010H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u0016\u001a\u00020\u0010H\u0016J,\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00100\u001dH\u0002J\u0018\u0010\u001e\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V",
        "getClusterInfo",
        "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "isAbort",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "rxOSSManager",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "docConvert",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;",
        "convertEntry",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "downloadFile",
        "",
        "listener",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;",
        "init",
        "queryDocConvert",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;",
        "release",
        "saveStream",
        "",
        "input",
        "Ljava/io/InputStream;",
        "output",
        "Ljava/io/FileOutputStream;",
        "Lkotlin/Function1;",
        "uploadFile",
        "Companion",
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
        "SMAP\nAliDocConvertor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliDocConvertor.kt\ncom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILE_TEMP_NAME_SUFFIX:Ljava/lang/String; = ".1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAbort:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->isAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->init()V

    return-void
.end method

.method public static final synthetic access$isAbort$p(Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->isAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private final saveStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lkotlin/jvm/functions/Function1;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/FileOutputStream;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    const/high16 p0, 0x10000

    new-array p0, p0, [B

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public docConvert(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    const-string v3, "rxOSSManager"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getBucketName()Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    if-nez v1, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setBucket(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    if-nez p0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getEndPoint()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    move-object p0, v4

    :cond_4
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setRegion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getName(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setFilename(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->getPlatform()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setPlatform(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getOssUploadKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setObjectKey(Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;

    filled-new-array {v0}, [Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "pdf"

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;->docConvertV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;

    move-result-object p0

    return-object p0
.end method

.method public downloadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .locals 13
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->generateConvertDocName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "toFile(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getOssDownloadKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/Range;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :try_start_0
    iget-object v3, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    if-nez v3, :cond_0

    const-string v3, "rxOSSManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_0
    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncGetObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getContentLength()J

    move-result-wide v3

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "getObjectContent(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;

    invoke-direct {v8, p0, p2, v3, v4}, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;-><init>(Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;J)V

    invoke-direct {p0, v7, v6, v8}, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->saveStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lkotlin/jvm/functions/Function1;)J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long p0, v7, v3

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setDownloadLocalPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getOssUploadKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getDownloadLocalPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p2, v2, p0, v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, p2

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener$DefaultImpls;->onResult$default(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v6, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    move-object v5, v1

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v5, v1

    goto :goto_2

    :catchall_3
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, p2

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener$DefaultImpls;->onResult$default(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v5, :cond_3

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    throw p0
.end method

.method public final getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public init()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->docConvertOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setToken(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;-><init>(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    return-void
.end method

.method public queryDocConvert(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;->setTicket(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    const-string v3, "rxOSSManager"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    if-nez v1, :cond_1

    move-object v1, v4

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;->setBucket(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getEndPoint()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, p0

    :goto_1
    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;->setRegion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->getPlatform()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;->setPlatform(Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;->queryConvertResultV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->isAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public uploadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v1, "convertEntry"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "rxOSSManager"

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getAbsolutePath(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncUploadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener$DefaultImpls;->onResult$default(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setOssUploadKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getOssUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setOssUploadUrl(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener$DefaultImpls;->onResult$default(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload failed! path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener$DefaultImpls;->onResult$default(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
