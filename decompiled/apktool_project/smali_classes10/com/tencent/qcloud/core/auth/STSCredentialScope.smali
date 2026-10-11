.class public Lcom/tencent/qcloud/core/auth/STSCredentialScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NONE:Lcom/tencent/qcloud/core/auth/STSCredentialScope;


# instance fields
.field public final action:Ljava/lang/String;

.field public final bucket:Ljava/lang/String;

.field public final prefix:Ljava/lang/String;

.field public final region:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/tencent/qcloud/core/auth/STSCredentialScope;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->NONE:Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->action:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->bucket:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->region:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->prefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->prefix:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static jsonify([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Ljava/lang/String;
    .locals 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "action"

    iget-object v6, v3, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->action:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "bucket"

    iget-object v6, v3, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->bucket:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "prefix"

    iget-object v6, v3, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "region"

    iget-object v3, v3, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->region:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toArray([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)[Lcom/tencent/qcloud/core/auth/STSCredentialScope;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->action:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->action:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->bucket:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->bucket:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->prefix:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->prefix:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->region:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->region:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toArray()[Lcom/tencent/qcloud/core/auth/STSCredentialScope;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->toArray([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    move-result-object p0

    return-object p0
.end method
