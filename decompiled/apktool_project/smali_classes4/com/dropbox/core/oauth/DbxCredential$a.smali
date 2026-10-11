.class public Lcom/dropbox/core/oauth/DbxCredential$a;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/oauth/DbxCredential;->refresh(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/util/Collection;)Lcom/dropbox/core/oauth/DbxRefreshResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler<",
        "Lcom/dropbox/core/oauth/DbxRefreshResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/dropbox/core/oauth/DbxCredential;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/oauth/DbxCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/oauth/DbxCredential$a;->a:Lcom/dropbox/core/oauth/DbxCredential;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/oauth/DbxRefreshResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {p0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/oauth/DbxRefreshResult;

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/dropbox/core/oauth/DbxOAuthError;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/oauth/DbxOAuthError;

    new-instance v0, Lcom/dropbox/core/oauth/DbxOAuthException;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/oauth/DbxOAuthException;-><init>(Ljava/lang/String;Lcom/dropbox/core/oauth/DbxOAuthError;)V

    throw v0
.end method

.method public bridge synthetic handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dropbox/core/oauth/DbxCredential$a;->a(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/oauth/DbxRefreshResult;

    move-result-object p0

    return-object p0
.end method
