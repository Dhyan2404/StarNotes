.class public final Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# instance fields
.field public listMultipartUploads:Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;->listMultipartUploads:Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;

    return-void
.end method

.method public static parseListMultipartUploadsResult(Ljava/io/InputStream;Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->uploads:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->commonPrefixes:Ljava/util/List;

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    const/4 v6, 0x1

    if-eq p0, v6, :cond_1e

    const/4 v6, 0x2

    const-string v7, "Initiator"

    const-string v8, "Owner"

    const-string v9, "CommonPrefixs"

    const-string v10, "Upload"

    if-eq p0, v6, :cond_4

    const/4 v6, 0x3

    if-eq p0, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->uploads:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->commonPrefixes:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-object v4, v2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->owner:Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Owner;

    move-object v4, v1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    iput-object v5, v2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->initiator:Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Initiator;

    move-object v5, v1

    goto/16 :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v6, "Bucket"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->bucket:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v6, "Encoding-Type"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->encodingType:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v6, "KeyMarker"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->keyMarker:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v6, "UploadIdMarker"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->uploadIdMarker:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v6, "NextKeyMarker"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->nextKeyMarker:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v6, "NextUploadIdMarker"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->nextUploadIdMarker:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v6, "MaxUploads"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->maxUploads:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v6, "IsTruncated"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->isTruncated:Z

    goto/16 :goto_1

    :cond_c
    const-string v6, "Prefix"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-nez v3, :cond_d

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->prefix:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$CommonPrefixes;->prefix:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v6, "Delimiter"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->delimiter:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance v2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;

    invoke-direct {v2}, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;-><init>()V

    goto/16 :goto_1

    :cond_10
    const-string v6, "Key"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->key:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v6, "UploadId"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->uploadID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const-string v6, "StorageClass"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->storageClass:Ljava/lang/String;

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    new-instance v5, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Initiator;

    invoke-direct {v5}, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Initiator;-><init>()V

    goto/16 :goto_1

    :cond_14
    const-string v6, "UIN"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Initiator;->uin:Ljava/lang/String;

    goto/16 :goto_1

    :cond_15
    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    new-instance v4, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Owner;

    invoke-direct {v4}, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Owner;-><init>()V

    goto/16 :goto_1

    :cond_16
    const-string v6, "UID"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v4, :cond_1d

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Owner;->uid:Ljava/lang/String;

    goto :goto_1

    :cond_17
    const-string v6, "ID"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v4, :cond_18

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Owner;->id:Ljava/lang/String;

    goto :goto_1

    :cond_18
    if-eqz v5, :cond_1d

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Initiator;->id:Ljava/lang/String;

    goto :goto_1

    :cond_19
    const-string v6, "DisplayName"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Owner;->displayName:Ljava/lang/String;

    goto :goto_1

    :cond_1a
    if-eqz v5, :cond_1d

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Initiator;->displayName:Ljava/lang/String;

    goto :goto_1

    :cond_1b
    const-string v6, "Initiated"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->initiated:Ljava/lang/String;

    goto :goto_1

    :cond_1c
    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    new-instance v3, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$CommonPrefixes;

    invoke-direct {v3}, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$CommonPrefixes;-><init>()V

    :cond_1d
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto/16 :goto_0

    :cond_1e
    return-void
.end method


# virtual methods
.method public printResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;->listMultipartUploads:Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;->printResult()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public xmlParser(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;->listMultipartUploads:Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;

    invoke-static {p1, p0}, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;->parseListMultipartUploadsResult(Ljava/io/InputStream;Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;)V

    return-void
.end method
