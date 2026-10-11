.class public Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation$$XmlAdapter;
.super Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter<",
        "Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;",
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
.method public toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;Ljava/lang/String;)V
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

    const-string p3, "Operation"

    :cond_1
    const-string p0, ""

    .line 2
    invoke-interface {p1, p0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;->extractDigitalWatermark:Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobExtractDigitalWatermark;

    if-eqz v0, :cond_2

    const-string v1, "ExtractDigitalWatermark"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->toXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :cond_2
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;->jobLevel:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "JobLevel"

    .line 6
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    iget-object v1, p2, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;->jobLevel:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    :cond_3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;->userData:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "UserData"

    .line 10
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    iget-object p2, p2, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;->userData:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    :cond_4
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
    check-cast p2, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation$$XmlAdapter;->toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation;Ljava/lang/String;)V

    return-void
.end method
