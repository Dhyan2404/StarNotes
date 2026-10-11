.class public Lcom/tencent/cos/xml/model/ci/common/SpeechRecognition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->ALL:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "SpeechRecognition"
.end annotation


# instance fields
.field public channelNum:Ljava/lang/String;

.field public convertNumMode:Ljava/lang/String;

.field public engineModelType:Ljava/lang/String;

.field public filterDirty:Ljava/lang/String;

.field public filterModal:Ljava/lang/String;

.field public filterPunc:Ljava/lang/String;

.field public firstChannelOnly:Ljava/lang/String;

.field public flashAsr:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public outputFileType:Ljava/lang/String;

.field public resTextFormat:Ljava/lang/String;

.field public sentenceMaxLength:Ljava/lang/String;

.field public speakerDiarization:Ljava/lang/String;

.field public speakerNumber:Ljava/lang/String;

.field public wordInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
