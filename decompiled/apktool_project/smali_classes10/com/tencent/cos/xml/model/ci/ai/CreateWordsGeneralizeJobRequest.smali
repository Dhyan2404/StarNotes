.class public Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private final createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;->checkParameters()V

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->input:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobInput;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobInput;->object:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "input must be non-empty"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "POST"

    return-object p0
.end method

.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    const-string p0, "/ai_jobs"

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

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

.method public setCallBack(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->callBack:Ljava/lang/String;

    return-void
.end method

.method public setCallBackFormat(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->callBackFormat:Ljava/lang/String;

    return-void
.end method

.method public setInputObject(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->input:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobInput;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobInput;->object:Ljava/lang/String;

    return-void
.end method

.method public setJobLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->operation:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;->jobLevel:I

    return-void
.end method

.method public setNerMethod(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->operation:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;->wordsGeneralize:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralize;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralize;->nerMethod:Ljava/lang/String;

    return-void
.end method

.method public setQueueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->queueId:Ljava/lang/String;

    return-void
.end method

.method public setSegMethod(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->operation:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;->wordsGeneralize:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralize;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralize;->segMethod:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/CreateWordsGeneralizeJobRequest;->createWordsGeneralizeJob:Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->operation:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;->userData:Ljava/lang/String;

    return-void
.end method
