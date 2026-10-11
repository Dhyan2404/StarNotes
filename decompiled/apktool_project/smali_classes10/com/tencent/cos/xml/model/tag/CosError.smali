.class public Lcom/tencent/cos/xml/model/tag/CosError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public requestId:Ljava/lang/String;

.field public resource:Ljava/lang/String;

.field public traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/CosError;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/cos/xml/model/tag/CosError;

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/CosError;-><init>()V

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/model/tag/CosError;->code:Ljava/lang/String;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/model/tag/CosError;->message:Ljava/lang/String;

    const-string v1, "RequestId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/model/tag/CosError;->requestId:Ljava/lang/String;

    const-string v1, "TraceId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/CosError;->traceId:Ljava/lang/String;

    return-object p0
.end method
