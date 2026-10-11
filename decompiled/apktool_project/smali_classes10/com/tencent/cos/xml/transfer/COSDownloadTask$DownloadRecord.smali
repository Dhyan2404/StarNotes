.class Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRecord"
.end annotation


# instance fields
.field crc64ecma:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field eTag:Ljava/lang/String;

.field lastModified:Ljava/lang/String;

.field remoteEnd:J

.field remoteStart:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->lastModified:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->eTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->crc64ecma:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->remoteStart:J

    iput-wide p6, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->remoteEnd:J

    return-void
.end method

.method public static flatJson(Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->lastModified:Ljava/lang/String;

    const-string v2, "lastModified"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eTag"

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "crc64ecma"

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->crc64ecma:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "remoteStart"

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->remoteStart:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "remoteEnd"

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->remoteEnd:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "lastModified"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "eTag"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "crc64ecma"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "remoteStart"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "remoteEnd"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v9
.end method
