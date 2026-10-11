.class public Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;
.super Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter<",
        "Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;",
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
            "Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;",
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

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$1;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$2;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$2;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "CodecName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$3;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$3;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "CodecLongName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$4;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$4;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "CodecTimeBase"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$5;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$5;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "CodecTagString"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$6;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$6;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "CodecTag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$7;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$7;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "ColorPrimaries"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$8;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$8;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "ColorRange"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$9;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$9;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "ColorTransfer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$10;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$10;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Profile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$11;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$11;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$12;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$12;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$13;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$13;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "HasBFrame"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$14;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$14;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "RefFrames"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$15;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$15;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Sar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$16;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$16;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Dar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$17;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$17;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "PixFormat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$18;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$18;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "FieldOrder"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$19;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$19;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Level"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$20;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$20;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Fps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$21;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$21;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "AvgFps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$22;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$22;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Timebase"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$23;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$23;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "StartTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$24;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$24;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$25;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$25;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "Bitrate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$26;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$26;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string v2, "NumFrames"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$27;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter$27;-><init>(Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;)V

    const-string p0, "Language"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;-><init>()V

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

    const-string v1, "MediaInfoStreamVideo"

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
    iget-object v2, p0, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

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
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;

    move-result-object p0

    return-object p0
.end method

.method public toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;Ljava/lang/String;)V
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

    const-string p3, "MediaInfoStreamVideo"

    :cond_1
    const-string p0, ""

    .line 2
    invoke-interface {p1, p0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->index:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "Index"

    .line 4
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->index:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    :cond_2
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "CodecName"

    .line 8
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    :cond_3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecLongName:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "CodecLongName"

    .line 12
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecLongName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    :cond_4
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecTimeBase:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "CodecTimeBase"

    .line 16
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecTimeBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    :cond_5
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecTagString:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "CodecTagString"

    .line 20
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecTagString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 23
    :cond_6
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecTag:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "CodecTag"

    .line 24
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->codecTag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    :cond_7
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->colorPrimaries:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "ColorPrimaries"

    .line 28
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->colorPrimaries:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    :cond_8
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->colorRange:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "ColorRange"

    .line 32
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->colorRange:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    :cond_9
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->colorTransfer:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "ColorTransfer"

    .line 36
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->colorTransfer:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    :cond_a
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->profile:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "Profile"

    .line 40
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->profile:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    :cond_b
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->height:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "Height"

    .line 44
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->height:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    :cond_c
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->width:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "Width"

    .line 48
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->width:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    :cond_d
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->hasBFrame:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "HasBFrame"

    .line 52
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->hasBFrame:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    :cond_e
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->refFrames:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string v0, "RefFrames"

    .line 56
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->refFrames:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    :cond_f
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->sar:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v0, "Sar"

    .line 60
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->sar:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    :cond_10
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->dar:Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string v0, "Dar"

    .line 64
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->dar:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    :cond_11
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->pixFormat:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v0, "PixFormat"

    .line 68
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->pixFormat:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    :cond_12
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->fieldOrder:Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string v0, "FieldOrder"

    .line 72
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->fieldOrder:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    :cond_13
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->level:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v0, "Level"

    .line 76
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->level:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    :cond_14
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->fps:Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v0, "Fps"

    .line 80
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->fps:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    :cond_15
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->avgFps:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v0, "AvgFps"

    .line 84
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->avgFps:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    :cond_16
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->timebase:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v0, "Timebase"

    .line 88
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->timebase:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "Timebase"

    .line 90
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    :cond_17
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->startTime:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v0, "StartTime"

    .line 92
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->startTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "StartTime"

    .line 94
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    :cond_18
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->duration:Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string v0, "Duration"

    .line 96
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->duration:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "Duration"

    .line 98
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    :cond_19
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->bitrate:Ljava/lang/String;

    if-eqz v0, :cond_1a

    const-string v0, "Bitrate"

    .line 100
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->bitrate:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "Bitrate"

    .line 102
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    :cond_1a
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->numFrames:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v0, "NumFrames"

    .line 104
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->numFrames:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "NumFrames"

    .line 106
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    :cond_1b
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->language:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v0, "Language"

    .line 108
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    iget-object p2, p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;->language:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "Language"

    .line 110
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    :cond_1c
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
    check-cast p2, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo$$XmlAdapter;->toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/common/MediaInfoStreamVideo;Ljava/lang/String;)V

    return-void
.end method
