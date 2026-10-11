.class public Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob$$XmlAdapter;
.super Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter<",
        "Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;Ljava/lang/String;)V
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

    const-string p3, "Request"

    :cond_1
    const-string p0, ""

    .line 2
    invoke-interface {p1, p0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->tag:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "Tag"

    .line 4
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->tag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    :cond_2
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->input:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobInput;

    if-eqz v0, :cond_3

    const-string v1, "Input"

    .line 8
    invoke-static {p1, v0, v1}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->operation:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;

    if-eqz v0, :cond_4

    const-string v1, "Operation"

    .line 10
    invoke-static {p1, v0, v1}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->queueId:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "QueueId"

    .line 12
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->queueId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    :cond_5
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->callBack:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "CallBack"

    .line 16
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->callBack:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    :cond_6
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->callBackFormat:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "CallBackFormat"

    .line 20
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21
    iget-object p2, p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;->callBackFormat:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 23
    :cond_7
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
    check-cast p2, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob$$XmlAdapter;->toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/ai/bean/CreateWordsGeneralizeJob;Ljava/lang/String;)V

    return-void
.end method
