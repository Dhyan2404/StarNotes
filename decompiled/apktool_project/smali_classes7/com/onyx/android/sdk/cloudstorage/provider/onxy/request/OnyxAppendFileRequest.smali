.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
        "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
        "execute",
        "",
        "cloudPath",
        "",
        "position",
        "fileSize",
        "e",
        "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
        "g",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "a",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "rxOSSManager",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "<init>",
        "(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
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
.field public final a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rxOSSManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;Ljava/util/concurrent/atomic/AtomicLong;Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->f(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;Ljava/util/concurrent/atomic/AtomicLong;Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;JJ)V

    return-void
.end method

.method public static final f(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;Ljava/util/concurrent/atomic/AtomicLong;Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;JJ)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$soFarBytes"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p5

    add-long/2addr p5, p3

    invoke-virtual {p2, p5, p6}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setSoFarBytes(J)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getSoFarBytes()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p2, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "append processInfo:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p0, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;JJ)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v10, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start append file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",lastModified:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v14, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v14}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v1

    sub-long v2, p4, v8

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setTotalBytes(J)V

    new-instance v15, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v15}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    iget-object v2, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getExtension(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->mimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v1, v8

    :goto_0
    :try_start_1
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    const-wide/32 v3, 0x100000

    sub-long v1, p4, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    new-instance v6, Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    new-instance v2, Lcom/sunia/HTREnginev2/lgk;

    invoke-direct {v2, v0, v5}, Lcom/sunia/HTREnginev2/lgk;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;Ljava/util/concurrent/atomic/AtomicLong;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v6

    move-object/from16 v17, v2

    move-object v2, v15

    move-object/from16 v18, v14

    move-wide v13, v3

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move-object v8, v5

    move-object v9, v6

    move-wide/from16 v5, p2

    move-object v11, v7

    move-object/from16 v7, v17

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;-><init>(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;[BJLcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    iget-object v1, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {v1, v9}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncAppendObject(Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    move-result-object v1

    invoke-virtual {v8, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getNextPosition()J

    move-result-wide v1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nextPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v10, v4, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v4, v1, p4

    if-ltz v4, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v11}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->g(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javaClass onyx append done:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFileString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v18

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onyx append objectMetadata:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v10, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    move-wide/from16 v8, p2

    move-object v7, v11

    move-object/from16 v14, v18

    const/4 v13, 0x0

    move-object/from16 v11, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v11, v7

    :goto_1
    move-object v1, v11

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_2
    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public execute()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCompleteCloudPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4, v2}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/Range;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncHeadObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    const-string v4, "getMetadata(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getHeaderAppendPosition(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)J

    move-result-wide v8

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " append position:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",fileSize:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5, v11}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v5, v8, v6

    if-ltz v5, :cond_0

    const-string p0, "append no changes to cloud file"

    new-array v3, v10, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v2, p0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    move-object v2, p0

    move-wide v4, v8

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->e(Ljava/lang/String;JJ)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->execute()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/Range;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncHeadObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v1

    const-string v2, "getMetadata(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->setCloudPath(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result p1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    new-instance p0, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;-><init>()V

    return-object p0

    :cond_0
    throw p0
.end method
