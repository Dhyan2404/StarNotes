.class public Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SentenceWords;,
        Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SentenceDetail;,
        Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$FlashSentenceWord;,
        Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$FlashSentence;,
        Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$FlashResult;,
        Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SpeechRecognitionResult;,
        Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SpeechJobsDetailInput;,
        Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SpeechJobsDetailOperation;
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public creationTime:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public input:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SpeechJobsDetailInput;

.field public jobId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public operation:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SpeechJobsDetailOperation;

.field public queueId:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
