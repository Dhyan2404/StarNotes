.class public Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;
.super Lcom/tencent/cos/xml/model/object/ObjectRequest;
.source "SourceFile"


# static fields
.field public static final EXPRESSION_TYPE_SQL:Ljava/lang/String; = "SQL"


# instance fields
.field private expression:Ljava/lang/String;

.field private expressionType:Ljava/lang/String;

.field private inputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

.field private outputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;

.field private requestProgress:Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;

.field private selectObjectContentProgressListener:Lcom/tencent/cos/xml/listener/SelectObjectContentListener;

.field private selectResponseFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->expression:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->expressionType:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->requestProgress:Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;

    .line 5
    iput-object p6, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->inputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

    .line 6
    iput-object p7, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->outputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;)V
    .locals 8

    const-string v3, "SQL"

    .line 7
    new-instance v5, Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-direct {v5, p4}, Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;-><init>(Ljava/lang/Boolean;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "POST"

    return-object p0
.end method

.method public getQueryString()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v1, "select"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v1, "select-type"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    return-object p0
.end method

.method public getSelectObjectContentProgressListener()Lcom/tencent/cos/xml/listener/SelectObjectContentListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->selectObjectContentProgressListener:Lcom/tencent/cos/xml/listener/SelectObjectContentListener;

    return-object p0
.end method

.method public getSelectResponseFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->selectResponseFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public isNeedMD5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setSelectObjectContentProgressListener(Lcom/tencent/cos/xml/listener/SelectObjectContentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->selectObjectContentProgressListener:Lcom/tencent/cos/xml/listener/SelectObjectContentListener;

    return-void
.end method

.method public setSelectResponseFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->selectResponseFilePath:Ljava/lang/String;

    return-void
.end method

.method public xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->expressionType:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->expression:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->requestProgress:Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;

    iget-object v4, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->inputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

    iget-object v5, p0, Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;->outputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;)V

    invoke-static {v6}, Lcom/tencent/cos/xml/transfer/XmlBuilder;->buildSelectRequest(Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method
