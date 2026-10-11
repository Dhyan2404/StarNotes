.class public Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;
.super Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter<",
        "Lcom/tencent/cos/xml/model/tag/MediaInfo$Video;",
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
            "Lcom/tencent/cos/xml/model/tag/MediaInfo$Video;",
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

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$1;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$2;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$2;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "CodecName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$3;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$3;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "CodecLongName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$4;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$4;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "CodecTimeBase"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$5;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$5;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "CodecTagString"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$6;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$6;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "CodecTag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$7;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$7;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Profile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$8;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$8;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$9;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$9;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$10;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$10;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "HasBFrame"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$11;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$11;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "RefFrames"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$12;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$12;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Sar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$13;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$13;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Dar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$14;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$14;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "PixFormat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$15;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$15;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "FieldOrder"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$16;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$16;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Level"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$17;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$17;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Fps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$18;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$18;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "AvgFps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$19;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$19;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Timebase"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$20;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$20;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "StartTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$21;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$21;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$22;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$22;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "Bitrate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$23;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$23;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string v2, "NumFrames"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$24;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter$24;-><init>(Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;)V

    const-string p0, "Language"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/MediaInfo$Video;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video;-><init>()V

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

    const-string v1, "Video"

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
    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

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
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/model/tag/MediaInfo$Video$$XmlAdapter;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/MediaInfo$Video;

    move-result-object p0

    return-object p0
.end method
