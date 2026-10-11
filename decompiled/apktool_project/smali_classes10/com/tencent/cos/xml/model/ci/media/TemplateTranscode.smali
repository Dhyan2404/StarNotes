.class public Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeDashEncrypt;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeHlsEncrypt;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeClipConfig;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTimeInterval;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeContainer;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeAudio;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeVideo;
    }
.end annotation


# instance fields
.field public audio:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeAudio;

.field public audioMix:Lcom/tencent/cos/xml/model/ci/common/AudioMix;

.field public audioMixArray:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
        ignoreListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/common/AudioMix;",
            ">;"
        }
    .end annotation
.end field

.field public container:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeContainer;

.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public timeInterval:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTimeInterval;

.field public transConfig:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;

.field public video:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeVideo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Transcode"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode;->tag:Ljava/lang/String;

    return-void
.end method
