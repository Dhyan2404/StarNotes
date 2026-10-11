.class public Lcom/dropbox/core/v2/filerequests/CreateBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

.field public final b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "_builder"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "_client"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->build()Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object p0

    return-object p0
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    return-object p0
.end method

.method public withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    return-object p0
.end method
