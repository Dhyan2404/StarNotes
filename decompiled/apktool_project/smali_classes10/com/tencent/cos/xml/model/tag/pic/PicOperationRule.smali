.class public Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PicOperationRule"


# instance fields
.field private bucket:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private rule:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->fileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->fileId:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->rule:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->fileId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->rule:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->bucket:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->fileId:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->rule:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setBucket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->fileId:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->bucket:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bucket"

    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->fileId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fileid"

    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "rule"

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v1

    const-string v2, "PicOperationRule"

    invoke-virtual {v1, v2, p0}, Lcom/tencent/cos/xml/CosTrackService;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method
