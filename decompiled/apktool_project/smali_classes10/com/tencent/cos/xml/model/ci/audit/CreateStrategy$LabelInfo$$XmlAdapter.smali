.class public Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;
.super Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qcloud/qcloudxml/core/IXmlAdapter<",
        "Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;",
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
            "Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;",
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

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$1;-><init>(Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;)V

    const-string v2, "Porn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$2;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$2;-><init>(Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;)V

    const-string v2, "Politics"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$3;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$3;-><init>(Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;)V

    const-string v2, "Terrorism"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$4;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$4;-><init>(Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;)V

    const-string v2, "Ads"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$5;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$5;-><init>(Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;)V

    const-string v2, "Abuse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$6;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter$6;-><init>(Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;)V

    const-string p0, "Illegal"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;-><init>()V

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

    const-string v1, "LabelInfo"

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
    iget-object v2, p0, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->childElementBinders:Ljava/util/HashMap;

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
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;

    move-result-object p0

    return-object p0
.end method

.method public toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;Ljava/lang/String;)V
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

    const-string p3, "LabelInfo"

    :cond_1
    const-string p0, ""

    .line 2
    invoke-interface {p1, p0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->porn:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->porn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const-string v2, "Porn"

    .line 5
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    iget-object v3, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->porn:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->politics:Ljava/util/List;

    if-eqz v0, :cond_3

    move v0, v1

    .line 9
    :goto_1
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->politics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    const-string v2, "Politics"

    .line 10
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    iget-object v3, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->politics:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->terrorism:Ljava/util/List;

    if-eqz v0, :cond_4

    move v0, v1

    .line 14
    :goto_2
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->terrorism:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    const-string v2, "Terrorism"

    .line 15
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    iget-object v3, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->terrorism:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 18
    :cond_4
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->ads:Ljava/util/List;

    if-eqz v0, :cond_5

    move v0, v1

    .line 19
    :goto_3
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->ads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    const-string v2, "Ads"

    .line 20
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21
    iget-object v3, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->ads:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 23
    :cond_5
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->abuse:Ljava/util/List;

    if-eqz v0, :cond_6

    move v0, v1

    .line 24
    :goto_4
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->abuse:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    const-string v2, "Abuse"

    .line 25
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    iget-object v3, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->abuse:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 28
    :cond_6
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->illegal:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 29
    :goto_5
    iget-object v0, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->illegal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    const-string v0, "Illegal"

    .line 30
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    iget-object v2, p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;->illegal:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 33
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
    check-cast p2, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo$$XmlAdapter;->toXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;Ljava/lang/String;)V

    return-void
.end method
