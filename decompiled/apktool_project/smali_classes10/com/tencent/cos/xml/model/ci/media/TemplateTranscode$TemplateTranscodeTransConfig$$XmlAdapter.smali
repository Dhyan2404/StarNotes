.class public Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;
.super Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter<",
        "Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private childElementBinders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/qcloud/qcloudxml/core/ChildElementBinder<",
            "Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$1;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "AdjDarMethod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$2;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$2;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "IsCheckReso"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$3;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$3;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "ResoAdjMethod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$4;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$4;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "IsCheckVideoBitrate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$5;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$5;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "VideoBitrateAdjMethod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$6;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$6;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "IsCheckAudioBitrate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$7;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$7;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "AudioBitrateAdjMethod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$8;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$8;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "IsCheckVideoFps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$9;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$9;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "VideoFpsAdjMethod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$10;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$10;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "DeleteMetadata"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$11;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$11;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "IsHdr2Sdr"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$12;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$12;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "TranscodeIndex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$13;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$13;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string v2, "HlsEncrypt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$14;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter$14;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;)V

    const-string p0, "DashEncrypt"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;-><init>()V

    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "TransConfig"

    goto :goto_1

    :cond_1
    move-object v1, p2

    .line 4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 5
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/qcloudxml/core/ChildElementBinder;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 7
    invoke-interface {v1, p1, v0, v2}, Lcom/tencent/qcloud/qcloudxml/core/ChildElementBinder;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :cond_3
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public bridge synthetic fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;

    move-result-object p0

    return-object p0
.end method

.method public toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string p3, "TransConfig"

    :cond_1
    const-string p0, ""

    .line 2
    invoke-interface {p1, p0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->adjDarMethod:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "AdjDarMethod"

    .line 4
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->adjDarMethod:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    :cond_2
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isCheckReso:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "IsCheckReso"

    .line 8
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isCheckReso:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    :cond_3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->resoAdjMethod:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "ResoAdjMethod"

    .line 12
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->resoAdjMethod:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    :cond_4
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isCheckVideoBitrate:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "IsCheckVideoBitrate"

    .line 16
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isCheckVideoBitrate:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    :cond_5
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->videoBitrateAdjMethod:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "VideoBitrateAdjMethod"

    .line 20
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->videoBitrateAdjMethod:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 23
    :cond_6
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isCheckAudioBitrate:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "IsCheckAudioBitrate"

    .line 24
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isCheckAudioBitrate:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    :cond_7
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->audioBitrateAdjMethod:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "AudioBitrateAdjMethod"

    .line 28
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->audioBitrateAdjMethod:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    :cond_8
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isCheckVideoFps:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "IsCheckVideoFps"

    .line 32
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isCheckVideoFps:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    :cond_9
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->videoFpsAdjMethod:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "VideoFpsAdjMethod"

    .line 36
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->videoFpsAdjMethod:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    :cond_a
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->deleteMetadata:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "DeleteMetadata"

    .line 40
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->deleteMetadata:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    :cond_b
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isHdr2Sdr:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "IsHdr2Sdr"

    .line 44
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->isHdr2Sdr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    :cond_c
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->transcodeIndex:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "TranscodeIndex"

    .line 48
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->transcodeIndex:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    :cond_d
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->hlsEncrypt:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeHlsEncrypt;

    if-eqz v0, :cond_e

    const-string v1, "HlsEncrypt"

    .line 52
    invoke-static {p1, v0, v1}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :cond_e
    iget-object p2, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;->dashEncrypt:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeDashEncrypt;

    if-eqz p2, :cond_f

    const-string v0, "DashEncrypt"

    .line 54
    invoke-static {p1, p2, v0}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :cond_f
    invoke-interface {p1, p0, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig$$XmlAdapter;->toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;Ljava/lang/String;)V

    return-void
.end method
