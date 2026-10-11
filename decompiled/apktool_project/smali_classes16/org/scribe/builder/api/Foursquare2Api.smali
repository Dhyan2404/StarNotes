.class public Lorg/scribe/builder/api/Foursquare2Api;
.super Lorg/scribe/builder/api/DefaultApi20;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "https://foursquare.com/oauth2/authenticate?client_id=%s&response_type=code&redirect_uri=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi20;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "https://foursquare.com/oauth2/access_token?grant_type=authorization_code"

    return-object p0
.end method

.method public getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;
    .locals 0

    new-instance p0, Lorg/scribe/extractors/JsonTokenExtractor;

    invoke-direct {p0}, Lorg/scribe/extractors/JsonTokenExtractor;-><init>()V

    return-object p0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Must provide a valid url as callback. Foursquare2 does not support OOB"

    invoke-static {p0, v0}, Lorg/scribe/utils/Preconditions;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "https://foursquare.com/oauth2/authenticate?client_id=%s&response_type=code&redirect_uri=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
