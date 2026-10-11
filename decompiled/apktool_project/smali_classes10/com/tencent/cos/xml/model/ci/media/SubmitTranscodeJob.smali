.class public Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobSubtitle;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobRemoveWatermark;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobSubtitles;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobTranscode;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobOutput;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobOperation;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobInput;
    }
.end annotation


# instance fields
.field public callBack:Ljava/lang/String;

.field public callBackFormat:Ljava/lang/String;

.field public callBackMqConfig:Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;

.field public callBackType:Ljava/lang/String;

.field public input:Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobInput;

.field public operation:Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobOperation;

.field public queueType:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Transcode"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob;->tag:Ljava/lang/String;

    return-void
.end method
