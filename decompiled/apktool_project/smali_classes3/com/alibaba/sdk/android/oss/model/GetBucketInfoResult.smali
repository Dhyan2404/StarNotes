.class public Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field public f:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucket()Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->f:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    return-object p0
.end method

.method public setBucket(Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->f:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->f:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "GetBucketInfoResult<%s>:\n bucket:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
