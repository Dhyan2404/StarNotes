.class public Lcom/dropbox/core/DbxWebAuthNoRedirect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/DbxWebAuth;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dropbox/core/DbxWebAuth;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/DbxWebAuth;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V

    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuthNoRedirect;->a:Lcom/dropbox/core/DbxWebAuth;

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuthNoRedirect;->a:Lcom/dropbox/core/DbxWebAuth;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxWebAuth;->finishFromCode(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p0

    return-object p0
.end method

.method public start()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->newRequestBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->withNoRedirect()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->build()Lcom/dropbox/core/DbxWebAuth$Request;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuthNoRedirect;->a:Lcom/dropbox/core/DbxWebAuth;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/DbxWebAuth;->authorize(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
