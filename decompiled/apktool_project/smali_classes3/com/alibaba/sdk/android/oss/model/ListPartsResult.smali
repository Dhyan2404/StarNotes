.class public Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->i:I

    iput v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->j:I

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->l:Z

    iput v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->m:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxParts()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->i:I

    return p0
.end method

.method public getNextPartNumberMarker()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->m:I

    return p0
.end method

.method public getPartNumberMarker()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->j:I

    return p0
.end method

.method public getParts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->n:Ljava/util/List;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->h:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->l:Z

    return p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->f:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->g:Ljava/lang/String;

    return-void
.end method

.method public setMaxParts(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->i:I

    return-void
.end method

.method public setNextPartNumberMarker(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->m:I

    return-void
.end method

.method public setPartNumberMarker(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->j:I

    return-void
.end method

.method public setParts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->n:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->k:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->l:Z

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->h:Ljava/lang/String;

    return-void
.end method
