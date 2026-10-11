.class public Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;
.super Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter<",
        "Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;",
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
            "Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;",
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

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$1;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;)V

    const-string v2, "ConcatFragment"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$2;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$2;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;)V

    const-string v2, "Audio"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$3;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$3;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;)V

    const-string v2, "Video"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$4;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$4;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;)V

    const-string v2, "Container"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$5;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$5;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;)V

    const-string v2, "DirectConcat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$6;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$6;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;)V

    const-string v2, "SceneChangeInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$7;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$7;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;)V

    const-string v2, "AudioMix"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$8;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter$8;-><init>(Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;)V

    const-string p0, "AudioMixArray"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;-><init>()V

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

    const-string v1, "ConcatTemplate"

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
    iget-object v2, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

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
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;

    move-result-object p0

    return-object p0
.end method

.method public toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;Ljava/lang/String;)V
    .locals 4
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

    const-string p3, "ConcatTemplate"

    :cond_1
    const-string p0, ""

    .line 2
    invoke-interface {p1, p0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->concatFragment:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->concatFragment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->concatFragment:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatFragment;

    const-string v3, "ConcatFragment"

    invoke-static {p1, v2, v3}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->audio:Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatAudio;

    if-eqz v0, :cond_3

    const-string v2, "Audio"

    .line 7
    invoke-static {p1, v0, v2}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :cond_3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->video:Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatVideo;

    if-eqz v0, :cond_4

    const-string v2, "Video"

    .line 9
    invoke-static {p1, v0, v2}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_4
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->container:Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatContainer;

    if-eqz v0, :cond_5

    const-string v2, "Container"

    .line 11
    invoke-static {p1, v0, v2}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :cond_5
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->directConcat:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "DirectConcat"

    .line 13
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->directConcat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    :cond_6
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->sceneChangeInfo:Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatSceneChangeInfo;

    if-eqz v0, :cond_7

    const-string v2, "SceneChangeInfo"

    .line 17
    invoke-static {p1, v0, v2}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :cond_7
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->audioMix:Lcom/tencent/cos/xml/model/ci/common/AudioMix;

    const-string v2, "AudioMix"

    if-eqz v0, :cond_8

    .line 19
    invoke-static {p1, v0, v2}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :cond_8
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->audioMixArray:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 21
    :goto_1
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->audioMixArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 22
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;->audioMixArray:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/model/ci/common/AudioMix;

    invoke-static {p1, v0, v2}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_9
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
    check-cast p2, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate$$XmlAdapter;->toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatConcatTemplate;Ljava/lang/String;)V

    return-void
.end method
