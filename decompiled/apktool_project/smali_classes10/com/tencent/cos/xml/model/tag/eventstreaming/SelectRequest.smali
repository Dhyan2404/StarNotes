.class public Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private expression:Ljava/lang/String;

.field private expressionType:Ljava/lang/String;

.field private inputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

.field private outputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;

.field private requestProgress:Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->expressionType:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->expression:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->requestProgress:Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;

    iput-object p4, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->inputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

    iput-object p5, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->outputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;

    return-void
.end method


# virtual methods
.method public getExpression()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->expression:Ljava/lang/String;

    return-object p0
.end method

.method public getExpressionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->expressionType:Ljava/lang/String;

    return-object p0
.end method

.method public getInputSerialization()Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->inputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

    return-object p0
.end method

.method public getOutputSerialization()Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->outputSerialization:Lcom/tencent/cos/xml/model/tag/eventstreaming/OutputSerialization;

    return-object p0
.end method

.method public getRequestProgress()Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectRequest;->requestProgress:Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;

    return-object p0
.end method
