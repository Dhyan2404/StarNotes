.class public Lcom/alibaba/sdk/android/oss/model/MultipartUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitiated()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->d:Ljava/util/Date;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setInitiated(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->d:Ljava/util/Date;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->a:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->c:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->b:Ljava/lang/String;

    return-void
.end method
