.class public final Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u000eJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0000H\u0016R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R$\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "fileLength",
        "setFileLength",
        "execute",
        "",
        "a",
        "Ljava/lang/String;",
        "filePath",
        "b",
        "getMd5",
        "()Ljava/lang/String;",
        "setMd5",
        "(Ljava/lang/String;)V",
        "md5",
        "c",
        "J",
        "<init>",
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeFullMD5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->b:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->execute()Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;

    move-result-object p0

    return-object p0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setFileLength(J)Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->c:J

    return-object p0
.end method

.method public final setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->b:Ljava/lang/String;

    return-void
.end method
