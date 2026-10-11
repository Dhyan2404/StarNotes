.class public Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;
.super Lcom/tencent/cos/xml/model/ci/audit/BasePostAuditRequest;
.source "SourceFile"


# instance fields
.field private final postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/ci/audit/BasePostAuditRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;->checkParameters()V

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;->object:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;->snapshot:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;

    iget p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;->count:I

    return-void
.end method

.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    const-string p0, "/video/auditing"

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->callback:Ljava/lang/String;

    return-void
.end method

.method public setCallbackVersion(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;->callbackVersion:Ljava/lang/String;

    return-void
.end method

.method public setConfig(Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    return-void
.end method

.method public setCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;->snapshot:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;

    iput p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;->count:I

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;->dataId:Ljava/lang/String;

    return-void
.end method

.method public setDetectContent(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    iput p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;->detectContent:I

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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->detectType:Ljava/lang/String;

    return-void
.end method

.method public setInput(Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;->snapshot:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;->mode:Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;->object:Ljava/lang/String;

    return-void
.end method

.method public setTimeInterval(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;->snapshot:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;

    iput p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;->timeInterval:F

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostVideoAuditRequest;->postVideoAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;->url:Ljava/lang/String;

    return-void
.end method
