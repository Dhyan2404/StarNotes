.class public final Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveDocConvertFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveDocConvertFileRequest.kt\ncom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "convertEntry",
        "result",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
        "eventBus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;Lorg/greenrobot/eventbus/EventBus;)V",
        "localDir",
        "Ljava/io/File;",
        "getLocalDir",
        "()Ljava/io/File;",
        "setLocalDir",
        "(Ljava/io/File;)V",
        "downLoadFile",
        "execute",
        "handleProgress",
        "",
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
        "SMAP\nSaveDocConvertFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveDocConvertFileRequest.kt\ncom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
    }
.end annotation


# instance fields
.field private final convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public localDir:Ljava/io/File;

.field private final result:Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->result:Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method private final downLoadFile()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 6

    const/16 v0, 0x800

    new-array v0, v0, [B

    sget-object v1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->getLocalDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->generateConvertDocName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not create tempSaveFilePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_0
    iget-object v3, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->result:Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v3

    :goto_0
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v5, v2, v0, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->appendContentToFile(Ljava/lang/String;[BI)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->result:Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "calculateBase64Md5(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->result:Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pull data file md5 error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_2
    iget-object v3, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    iget-object v3, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    iget-object v4, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-direct {p0, v3, v4}, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->handleProgress(Lorg/greenrobot/eventbus/EventBus;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->result:Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->result:Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->result:Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setDownloadLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final handleProgress(Lorg/greenrobot/eventbus/EventBus;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;-><init>()V

    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->downLoadFile()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->execute()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getLocalDir()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->localDir:Ljava/io/File;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "localDir"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setLocalDir(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;->localDir:Ljava/io/File;

    return-void
.end method
