.class public Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;
.super Lcom/tencent/cos/xml/model/ci/audit/BasePostAuditRequest;
.source "SourceFile"


# instance fields
.field private final postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/ci/audit/BasePostAuditRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

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

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit$WebPageAuditConf;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->detectType:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    const-string p0, "/webpage/auditing"

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit$WebPageAuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->callback:Ljava/lang/String;

    return-void
.end method

.method public setConfig(Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit$WebPageAuditConf;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit$WebPageAuditConf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit$WebPageAuditConf;

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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit$WebPageAuditConf;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;->detectType:Ljava/lang/String;

    return-void
.end method

.method public setInput(Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;

    return-void
.end method

.method public setReturnHighlightHtml(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit$WebPageAuditConf;

    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit$WebPageAuditConf;->returnHighlightHtml:Z

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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostWebPageAuditRequest;->postWebPageAudit:Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostWebPageAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;->url:Ljava/lang/String;

    return-void
.end method
