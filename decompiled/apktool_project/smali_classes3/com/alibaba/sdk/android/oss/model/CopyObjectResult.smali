.class public Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->g:Ljava/util/Date;

    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->f:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->g:Ljava/util/Date;

    return-void
.end method
