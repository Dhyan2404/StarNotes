.class public Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;,
        Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;
    }
.end annotation


# instance fields
.field public callBack:Ljava/lang/String;

.field public callBackFormat:Ljava/lang/String;

.field public callBackMqConfig:Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;

.field public callBackType:Ljava/lang/String;

.field public input:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;

.field public operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

.field public queueId:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpeechRecognition"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->tag:Ljava/lang/String;

    new-instance v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->input:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsInput;

    new-instance v0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->operation:Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs$CreateSpeechJobsOperation;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/CreateSpeechJobs;->callBackMqConfig:Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;

    return-void
.end method
