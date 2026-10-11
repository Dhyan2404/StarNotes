.class public Lorg/scribe/oauth/OAuth10aServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/scribe/oauth/OAuthService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/scribe/oauth/OAuth10aServiceImpl$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "1.0"


# instance fields
.field public a:Lorg/scribe/model/OAuthConfig;

.field public b:Lorg/scribe/builder/api/DefaultApi10a;


# direct methods
.method public constructor <init>(Lorg/scribe/builder/api/DefaultApi10a;Lorg/scribe/model/OAuthConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    iput-object p2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    return-void
.end method


# virtual methods
.method public final a(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V
    .locals 2

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v0}, Lorg/scribe/builder/api/DefaultApi10a;->getTimestampService()Lorg/scribe/services/TimestampService;

    move-result-object v0

    invoke-interface {v0}, Lorg/scribe/services/TimestampService;->getTimestampInSeconds()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth_timestamp"

    invoke-virtual {p1, v1, v0}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v0}, Lorg/scribe/builder/api/DefaultApi10a;->getTimestampService()Lorg/scribe/services/TimestampService;

    move-result-object v0

    invoke-interface {v0}, Lorg/scribe/services/TimestampService;->getNonce()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth_nonce"

    invoke-virtual {p1, v1, v0}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v0}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth_consumer_key"

    invoke-virtual {p1, v1, v0}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v0}, Lorg/scribe/builder/api/DefaultApi10a;->getSignatureService()Lorg/scribe/services/SignatureService;

    move-result-object v0

    invoke-interface {v0}, Lorg/scribe/services/SignatureService;->getSignatureMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth_signature_method"

    invoke-virtual {p1, v1, v0}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_version"

    invoke-virtual {p0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v0}, Lorg/scribe/model/OAuthConfig;->hasScope()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v0}, Lorg/scribe/model/OAuthConfig;->getScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p1, v1, v0}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "oauth_signature"

    invoke-virtual {p0, p1, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->c(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appended additional OAuth parameters: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lorg/scribe/utils/MapUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lorg/scribe/model/OAuthRequest;)V
    .locals 2

    sget-object v0, Lorg/scribe/oauth/OAuth10aServiceImpl$a;->a:[I

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getSignatureType()Lorg/scribe/model/SignatureType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    const-string v0, "using Querystring signature"

    invoke-virtual {p0, v0}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/scribe/model/Request;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    const-string v1, "using Http Header signature"

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {p0}, Lorg/scribe/builder/api/DefaultApi10a;->getHeaderExtractor()Lorg/scribe/extractors/HeaderExtractor;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/scribe/extractors/HeaderExtractor;->extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Authorization"

    invoke-virtual {p1, v0, p0}, Lorg/scribe/model/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final c(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    const-string v1, "generating signature..."

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using base64 encoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/scribe/services/Base64Encoder;->type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v0}, Lorg/scribe/builder/api/DefaultApi10a;->getBaseStringExtractor()Lorg/scribe/extractors/BaseStringExtractor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/scribe/extractors/BaseStringExtractor;->extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v0}, Lorg/scribe/builder/api/DefaultApi10a;->getSignatureService()Lorg/scribe/services/SignatureService;

    move-result-object v0

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getApiSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/scribe/model/Token;->getSecret()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lorg/scribe/services/SignatureService;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base string is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "signature is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    return-object p2
.end method

.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;
    .locals 2

    const/4 v0, 0x2

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;ILjava/util/concurrent/TimeUnit;)Lorg/scribe/model/Token;

    move-result-object p0

    return-object p0
.end method

.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;ILjava/util/concurrent/TimeUnit;)Lorg/scribe/model/Token;
    .locals 1

    .line 1
    new-instance v0, Lorg/scribe/oauth/OAuth10aServiceImpl$b;

    invoke-direct {v0, p3, p4}, Lorg/scribe/oauth/OAuth10aServiceImpl$b;-><init>(ILjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Token;

    move-result-object p0

    return-object p0
.end method

.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Token;
    .locals 4

    .line 3
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtaining access token from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lorg/scribe/model/OAuthRequest;

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenVerb()Lorg/scribe/model/Verb;

    move-result-object v1

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth_token"

    invoke-virtual {v0, v2, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lorg/scribe/model/Verifier;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth_verifier"

    invoke-virtual {v0, v2, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting token to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and verifier to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0, p1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->a(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    .line 9
    invoke-virtual {p0, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->b(Lorg/scribe/model/OAuthRequest;)V

    .line 10
    iget-object p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    const-string p2, "sending request..."

    invoke-virtual {p1, p2}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p3}, Lorg/scribe/model/Request;->send(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object p3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/scribe/model/Response;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response body: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {p0}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/scribe/extractors/AccessTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;

    move-result-object p0

    return-object p0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {p0, p1}, Lorg/scribe/builder/api/DefaultApi10a;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestToken()Lorg/scribe/model/Token;
    .locals 2

    const/4 v0, 0x2

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getRequestToken(ILjava/util/concurrent/TimeUnit;)Lorg/scribe/model/Token;

    move-result-object p0

    return-object p0
.end method

.method public getRequestToken(ILjava/util/concurrent/TimeUnit;)Lorg/scribe/model/Token;
    .locals 1

    .line 1
    new-instance v0, Lorg/scribe/oauth/OAuth10aServiceImpl$b;

    invoke-direct {v0, p1, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl$b;-><init>(ILjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getRequestToken(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Token;

    move-result-object p0

    return-object p0
.end method

.method public getRequestToken(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Token;
    .locals 4

    .line 3
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtaining request token from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lorg/scribe/model/OAuthRequest;

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenVerb()Lorg/scribe/model/Verb;

    move-result-object v1

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting oauth_callback to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v3}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth_callback"

    invoke-virtual {v0, v2, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lorg/scribe/model/OAuthConstants;->EMPTY_TOKEN:Lorg/scribe/model/Token;

    invoke-virtual {p0, v0, v1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->a(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    .line 8
    invoke-virtual {p0, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->b(Lorg/scribe/model/OAuthRequest;)V

    .line 9
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    const-string v2, "sending request..."

    invoke-virtual {v1, v2}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lorg/scribe/model/Request;->send(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/scribe/model/Response;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->b:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {p0}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenExtractor()Lorg/scribe/extractors/RequestTokenExtractor;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/scribe/extractors/RequestTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V
    .locals 3

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signing request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/scribe/model/Request;->getCompleteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/scribe/model/Token;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "oauth_token"

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->a:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting token to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->a(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    invoke-virtual {p0, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->b(Lorg/scribe/model/OAuthRequest;)V

    return-void
.end method
