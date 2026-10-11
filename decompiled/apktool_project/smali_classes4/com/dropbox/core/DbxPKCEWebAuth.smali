.class public Lcom/dropbox/core/DbxPKCEWebAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/DbxRequestConfig;

.field public final b:Lcom/dropbox/core/DbxAppInfo;

.field public final c:Lcom/dropbox/core/DbxWebAuth;

.field public final d:Lcom/dropbox/core/DbxPKCEManager;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/dropbox/core/DbxAppInfo;->hasSecret()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->a:Lcom/dropbox/core/DbxRequestConfig;

    iput-object p2, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->b:Lcom/dropbox/core/DbxAppInfo;

    new-instance v0, Lcom/dropbox/core/DbxWebAuth;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/DbxWebAuth;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V

    iput-object v0, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->c:Lcom/dropbox/core/DbxWebAuth;

    new-instance p1, Lcom/dropbox/core/DbxPKCEManager;

    invoke-direct {p1}, Lcom/dropbox/core/DbxPKCEManager;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->d:Lcom/dropbox/core/DbxPKCEManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->e:Z

    iput-boolean p1, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->f:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PKCE cdoe flow doesn\'t require app secret, if you decide to embed it in your app, please use regular DbxWebAuth instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->f:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->d:Lcom/dropbox/core/DbxPKCEManager;

    iget-object v2, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->a:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v0, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->b:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->b:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v6

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/dropbox/core/DbxPKCEManager;->makeTokenRequest(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->f:Z

    invoke-virtual {p1, p3}, Lcom/dropbox/core/DbxAuthFinish;->b(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This DbxPKCEWebAuth instance has been consumed already. To start a new PKCE OAuth flow, please create a new instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must initialize the PKCE flow by calling authorize first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "code"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public authorize(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->d:Lcom/dropbox/core/DbxPKCEManager;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxPKCEManager;->getCodeChallenge()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code_challenge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code_challenge_method"

    const-string v2, "S256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/dropbox/core/DbxPKCEWebAuth;->c:Lcom/dropbox/core/DbxWebAuth;

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/DbxWebAuth;->d(Lcom/dropbox/core/DbxWebAuth$Request;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This DbxPKCEWebAuth instance has been consumed already. To start a new PKCE OAuth flow, please create a new instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finishFromCode(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/dropbox/core/DbxPKCEWebAuth;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p0

    return-object p0
.end method

.method public finishFromRedirect(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/DbxSessionStore;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/DbxAuthFinish;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
            Lcom/dropbox/core/DbxWebAuth$BadStateException;,
            Lcom/dropbox/core/DbxWebAuth$CsrfException;,
            Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
            Lcom/dropbox/core/DbxWebAuth$ProviderException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/dropbox/core/DbxWebAuth;->h(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "code"

    invoke-static {p3, v0}, Lcom/dropbox/core/DbxWebAuth;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/dropbox/core/DbxPKCEWebAuth;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p0

    return-object p0
.end method
