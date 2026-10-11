.class public Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
.end annotation


# instance fields
.field public channelNum:I

.field public convertNumMode:I

.field public engineModelType:Ljava/lang/String;

.field public filterDirty:I

.field public filterModal:I

.field public filterPunc:I

.field public firstChannelOnly:I

.field public flashAsr:Z

.field public format:Ljava/lang/String;

.field public outputFileType:Ljava/lang/String;

.field public resTextFormat:I

.field public speakerDiarization:I

.field public speakerNumber:I

.field public wordInfo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->channelNum:I

    iput v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->resTextFormat:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->convertNumMode:I

    iput v0, p0, Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;->firstChannelOnly:I

    return-void
.end method
