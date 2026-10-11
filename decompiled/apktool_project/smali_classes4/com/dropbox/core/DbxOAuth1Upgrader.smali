.class public final Lcom/dropbox/core/DbxOAuth1Upgrader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ResponseReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/dropbox/core/DbxRequestConfig;

.field public final b:Lcom/dropbox/core/DbxAppInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/DbxOAuth1Upgrader$c;

    invoke-direct {v0}, Lcom/dropbox/core/DbxOAuth1Upgrader$c;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxOAuth1Upgrader;->ResponseReader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->a:Lcom/dropbox/core/DbxRequestConfig;

    iput-object p2, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->b:Lcom/dropbox/core/DbxAppInfo;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'appInfo\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'requestConfig\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "UTF-8 should always be supported"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuth oauth_version=\"1.0\", oauth_signature_method=\"PLAINTEXT\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oauth_consumer_key=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->b:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/DbxOAuth1Upgrader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oauth_token=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxOAuth1AccessToken;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/DbxOAuth1Upgrader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oauth_signature=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->b:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxAppInfo;->getSecret()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/DbxOAuth1Upgrader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxOAuth1AccessToken;->getSecret()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/DbxOAuth1Upgrader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxOAuth1AccessToken;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v2, "Authorization"

    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxOAuth1Upgrader;->a(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createOAuth2AccessToken(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->a:Lcom/dropbox/core/DbxRequestConfig;

    const-string v1, "Dropbox-Java-SDK"

    iget-object v2, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->b:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1/oauth2/token_from_oauth1"

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxOAuth1Upgrader;->c(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/dropbox/core/DbxOAuth1Upgrader$a;

    invoke-direct {v6, p0}, Lcom/dropbox/core/DbxOAuth1Upgrader$a;-><init>(Lcom/dropbox/core/DbxOAuth1Upgrader;)V

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'token\' can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableOAuth1AccessToken(Lcom/dropbox/core/DbxOAuth1AccessToken;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->a:Lcom/dropbox/core/DbxRequestConfig;

    const-string v1, "Dropbox-Java-SDK"

    iget-object v2, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->b:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1/disable_access_token"

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxOAuth1Upgrader;->c(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/dropbox/core/DbxOAuth1Upgrader$b;

    invoke-direct {v6, p0}, Lcom/dropbox/core/DbxOAuth1Upgrader$b;-><init>(Lcom/dropbox/core/DbxOAuth1Upgrader;)V

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'token\' can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
