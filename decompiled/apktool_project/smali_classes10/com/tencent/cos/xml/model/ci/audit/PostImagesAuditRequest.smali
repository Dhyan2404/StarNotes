.class public Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;
.super Lcom/tencent/cos/xml/model/ci/audit/BasePostAuditRequest;
.source "SourceFile"


# instance fields
.field private final postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/ci/audit/BasePostAuditRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    return-void
.end method


# virtual methods
.method public addImage(Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit$ImagesAuditInput;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit$ImagesAuditInput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->input:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;->checkParameters()V

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->input:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    :cond_0
    return-void
.end method

.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    const-string p0, "/image/auditing"

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method

.method public setAsync(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    iput p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->async:I

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->callback:Ljava/lang/String;

    return-void
.end method

.method public setConfig(Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    return-void
.end method

.method public setDetectType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->detectType:Ljava/lang/String;

    return-void
.end method

.method public setFreeze(Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf$Freeze;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf$Freeze;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostImagesAuditRequest;->postImagesAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->freeze:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf$Freeze;

    return-void
.end method
