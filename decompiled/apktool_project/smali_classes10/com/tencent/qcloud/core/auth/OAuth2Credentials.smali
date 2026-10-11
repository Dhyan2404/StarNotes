.class public Lcom/tencent/qcloud/core/auth/OAuth2Credentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/auth/QCloudCredentials;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    }
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private authorizationCode:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private tokenStartTime:Ljava/util/Date;

.field private validFromDate:Ljava/util/Date;


# direct methods
.method private constructor <init>(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$000(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->platform:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$100(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->accessToken:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$200(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->tokenStartTime:Ljava/util/Date;

    .line 6
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$200(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$300(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->validFromDate:Ljava/util/Date;

    .line 7
    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$400(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->refreshToken:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$500(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->openId:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$600(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->scope:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->access$700(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->authorizationCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;Lcom/tencent/qcloud/core/auth/OAuth2Credentials$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;-><init>(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthorizationCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->authorizationCode:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresInSeconds()J
    .locals 4

    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->validFromDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->tokenStartTime:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public getSecretId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public getTokenStartTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->tokenStartTime:Ljava/util/Date;

    return-object p0
.end method

.method public getValidFromDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->validFromDate:Ljava/util/Date;

    return-object p0
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;->validFromDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
