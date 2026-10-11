.class public Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTempleteRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field protected final templateId:Ljava/lang/String;

.field private updateVoiceSeparateTemplete:Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTemplete;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTempleteRequest;->templateId:Ljava/lang/String;

    const-string p1, "Content-Type"

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "PUT"

    return-object p0
.end method

.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/template/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTempleteRequest;->templateId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTempleteRequest;->updateVoiceSeparateTemplete:Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTemplete;

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method

.method public getRequestHost(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->region:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->bucket:Ljava/lang/String;

    const-string v1, "${bucket}.ci.${region}.myqcloud.com"

    invoke-virtual {p1, v0, p0, v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRequestHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setUpdateVoiceSeparateTemplete(Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTemplete;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTemplete;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTempleteRequest;->updateVoiceSeparateTemplete:Lcom/tencent/cos/xml/model/ci/ai/UpdateVoiceSeparateTemplete;

    return-void
.end method
