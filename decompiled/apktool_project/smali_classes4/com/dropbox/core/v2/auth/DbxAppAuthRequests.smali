.class public Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method public a(Lcom/dropbox/core/v2/auth/a;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/auth/token/from_oauth1"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/auth/a$a;->b:Lcom/dropbox/core/v2/auth/a$a;

    sget-object v6, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result$a;->b:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result$a;

    sget-object v7, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error$b;->b:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    const-string v2, "2/auth/token/from_oauth1"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;)V

    throw p1
.end method

.method public tokenFromOauth1(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/auth/a;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/auth/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->a(Lcom/dropbox/core/v2/auth/a;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;

    move-result-object p0

    return-object p0
.end method
