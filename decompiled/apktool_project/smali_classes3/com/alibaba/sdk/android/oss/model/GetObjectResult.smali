.class public Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field public f:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field public g:J

.field public h:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->f:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public getClientCRC()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->getClientCRC64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->getClientCRC()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->g:J

    return-wide v0
.end method

.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->f:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object p0
.end method

.method public getObjectContent()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->h:Ljava/io/InputStream;

    return-object p0
.end method

.method public setContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->g:J

    return-void
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->f:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->h:Ljava/io/InputStream;

    return-void
.end method
