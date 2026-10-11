.class public Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

.field public final b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

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
            Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->build()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->f(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object p0

    return-object p0
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->withDeadline(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    return-object p0
.end method

.method public withDestination(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->withDestination(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    return-object p0
.end method

.method public withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->withTitle(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    return-object p0
.end method
