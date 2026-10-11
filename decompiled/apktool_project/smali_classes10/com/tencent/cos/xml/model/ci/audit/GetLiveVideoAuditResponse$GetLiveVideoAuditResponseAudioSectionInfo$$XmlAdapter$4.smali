.class Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo$$XmlAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/qcloudxml/core/ChildElementBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo$$XmlAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/qcloud/qcloudxml/core/ChildElementBinder<",
        "Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo$$XmlAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo$$XmlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo$$XmlAdapter$4;->this$0:Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo$$XmlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2
    iget-object p0, p2, Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo;->keywords:Ljava/util/List;

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p2, Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo;->keywords:Ljava/util/List;

    .line 4
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    :goto_0
    const/4 p3, 0x1

    if-eq p0, p3, :cond_4

    const/4 p3, 0x2

    if-eq p0, p3, :cond_2

    const/4 p3, 0x3

    if-eq p0, p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Keywords"

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 6
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 7
    iget-object p0, p2, Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo;->keywords:Ljava/util/List;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public bridge synthetic fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo$$XmlAdapter$4;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo;Ljava/lang/String;)V

    return-void
.end method
