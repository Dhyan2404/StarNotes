.class public Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->h:Z

    return-void
.end method


# virtual methods
.method public getTargetBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->g:Ljava/lang/String;

    return-object p0
.end method

.method public loggingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->h:Z

    return p0
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->h:Z

    return-void
.end method

.method public setTargetBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->f:Ljava/lang/String;

    return-void
.end method

.method public setTargetPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->g:Ljava/lang/String;

    return-void
.end method
