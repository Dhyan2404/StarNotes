.class public Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArchiveDays()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getArchiveExpireDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getDays()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getExpireDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getIADays()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getIAExpireDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getMultipartDays()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getMultipartExpireDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->c:Z

    return p0
.end method

.method public setArchiveDays(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->j:Ljava/lang/String;

    return-void
.end method

.method public setArchiveExpireDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->k:Ljava/lang/String;

    return-void
.end method

.method public setDays(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->d:Ljava/lang/String;

    return-void
.end method

.method public setExpireDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->e:Ljava/lang/String;

    return-void
.end method

.method public setIADays(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->h:Ljava/lang/String;

    return-void
.end method

.method public setIAExpireDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->i:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->a:Ljava/lang/String;

    return-void
.end method

.method public setMultipartDays(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->f:Ljava/lang/String;

    return-void
.end method

.method public setMultipartExpireDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->g:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->b:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->c:Z

    return-void
.end method
