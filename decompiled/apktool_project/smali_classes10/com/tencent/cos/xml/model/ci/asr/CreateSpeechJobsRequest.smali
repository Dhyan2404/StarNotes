.class public Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private final createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;


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

    new-instance p1, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

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

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->input:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;->object:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->input:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->output:Lcom/tencent/cos/xml/model/tag/Locator;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/Locator;->region:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->output:Lcom/tencent/cos/xml/model/tag/Locator;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/Locator;->bucket:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->output:Lcom/tencent/cos/xml/model/tag/Locator;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/Locator;->object:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->engineModelType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iget v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->channelNum:I

    iget p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->resTextFormat:I

    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "POST"

    return-object p0
.end method

.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    const-string p0, "/asr_jobs"

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->callBack:Ljava/lang/String;

    return-void
.end method

.method public setCallBackFormat(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->callBackFormat:Ljava/lang/String;

    return-void
.end method

.method public setCallBackMqConfig(Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->callBackMqConfig:Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;

    return-void
.end method

.method public setCallBackType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->callBackType:Ljava/lang/String;

    return-void
.end method

.method public setChannelNum(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->channelNum:I

    return-void
.end method

.method public setConvertNumMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->convertNumMode:I

    return-void
.end method

.method public setEngineModelType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->engineModelType:Ljava/lang/String;

    return-void
.end method

.method public setFilterDirty(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->filterDirty:I

    return-void
.end method

.method public setFilterModal(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->filterModal:I

    return-void
.end method

.method public setFilterPunc(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->filterPunc:I

    return-void
.end method

.method public setFirstChannelOnly(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->firstChannelOnly:I

    return-void
.end method

.method public setFlashAsr(Z)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->flashAsr:Z

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->format:Ljava/lang/String;

    return-void
.end method

.method public setInputObject(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->input:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;->object:Ljava/lang/String;

    return-void
.end method

.method public setInputUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->input:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;->url:Ljava/lang/String;

    return-void
.end method

.method public setJobLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->jobLevel:I

    return-void
.end method

.method public setOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->output:Lcom/tencent/cos/xml/model/tag/Locator;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/Locator;->region:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/Locator;->bucket:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/Locator;->object:Ljava/lang/String;

    return-void
.end method

.method public setOutputFileType(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->outputFileType:Ljava/lang/String;

    return-void
.end method

.method public setQueueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->queueId:Ljava/lang/String;

    return-void
.end method

.method public setResTextFormat(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->resTextFormat:I

    return-void
.end method

.method public setSpeakerDiarization(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->speakerDiarization:I

    return-void
.end method

.method public setSpeakerNumber(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->speakerNumber:I

    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->templateId:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->userData:Ljava/lang/String;

    return-void
.end method

.method public setWordInfo(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/CreateSpeechJobsRequest;->createSpeechJobs:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;->speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->wordInfo:I

    return-void
.end method
