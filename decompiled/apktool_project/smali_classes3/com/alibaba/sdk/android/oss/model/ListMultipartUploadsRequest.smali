.class public Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxUploads()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->i:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public setMaxUploads(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->f:Ljava/lang/Integer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public setUploadIdMarker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->h:Ljava/lang/String;

    return-void
.end method
