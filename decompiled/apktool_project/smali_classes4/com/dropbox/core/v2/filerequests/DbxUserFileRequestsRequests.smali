.class public Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method public a(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/create"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$a;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->b:Lcom/dropbox/core/v2/filerequests/FileRequest$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$b;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    const-string v2, "2/file_requests/create"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;)V

    throw p1
.end method

.method public b(Lcom/dropbox/core/v2/filerequests/a;)Lcom/dropbox/core/v2/filerequests/DeleteFileRequestsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/DeleteFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/a$a;->b:Lcom/dropbox/core/v2/filerequests/a$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/DeleteFileRequestsResult$a;->b:Lcom/dropbox/core/v2/filerequests/DeleteFileRequestsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/DeleteFileRequestError$b;->b:Lcom/dropbox/core/v2/filerequests/DeleteFileRequestError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/DeleteFileRequestsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/filerequests/DeleteFileRequestErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/DeleteFileRequestError;

    const-string v2, "2/file_requests/delete"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/DeleteFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/DeleteFileRequestError;)V

    throw p1
.end method

.method public c(Lcom/dropbox/core/v2/filerequests/b;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/b$a;->b:Lcom/dropbox/core/v2/filerequests/b$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->b:Lcom/dropbox/core/v2/filerequests/FileRequest$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/GetFileRequestError$b;->b:Lcom/dropbox/core/v2/filerequests/GetFileRequestError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v2, "2/file_requests/get"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/GetFileRequestError;)V

    throw p1
.end method

.method public count()Lcom/dropbox/core/v2/filerequests/CountFileRequestsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CountFileRequestsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/count"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/filerequests/CountFileRequestsResult$a;->b:Lcom/dropbox/core/v2/filerequests/CountFileRequestsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/CountFileRequestsError$b;->b:Lcom/dropbox/core/v2/filerequests/CountFileRequestsError$b;

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/CountFileRequestsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/dropbox/core/v2/filerequests/CountFileRequestsErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/CountFileRequestsError;

    const-string v3, "2/file_requests/count"

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/dropbox/core/v2/filerequests/CountFileRequestsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/CountFileRequestsError;)V

    throw v0
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object p0

    return-object p0
.end method

.method public createBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 0

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    move-result-object p1

    new-instance p2, Lcom/dropbox/core/v2/filerequests/CreateBuilder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/filerequests/CreateBuilder;-><init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;)V

    return-object p2
.end method

.method public d(Lcom/dropbox/core/v2/filerequests/d;)Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/d$a;->b:Lcom/dropbox/core/v2/filerequests/d$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result$a;->b:Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError$b;->b:Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    const-string v2, "2/file_requests/list/continue"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;)V

    throw p1
.end method

.method public delete(Ljava/util/List;)Lcom/dropbox/core/v2/filerequests/DeleteFileRequestsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/filerequests/DeleteFileRequestsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/DeleteFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/filerequests/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->b(Lcom/dropbox/core/v2/filerequests/a;)Lcom/dropbox/core/v2/filerequests/DeleteFileRequestsResult;

    move-result-object p0

    return-object p0
.end method

.method public deleteAllClosed()Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/delete_all_closed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsResult$a;->b:Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsError$b;->b:Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsError$b;

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsError;

    const-string v3, "2/file_requests/delete_all_closed"

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/DeleteAllClosedFileRequestsError;)V

    throw v0
.end method

.method public e(Lcom/dropbox/core/v2/filerequests/c;)Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/list_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/c$a;->b:Lcom/dropbox/core/v2/filerequests/c$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result$a;->b:Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$b;->b:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    const-string v2, "2/file_requests/list_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;)V

    throw p1
.end method

.method public f(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->b:Lcom/dropbox/core/v2/filerequests/FileRequest$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError$b;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError;

    const-string v2, "2/file_requests/update"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError;)V

    throw p1
.end method

.method public get(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/filerequests/b;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->c(Lcom/dropbox/core/v2/filerequests/b;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object p0

    return-object p0
.end method

.method public list()Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$a;->b:Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$b;->b:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$b;

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    const-string v3, "2/file_requests/list"

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;)V

    throw v0
.end method

.method public listContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/filerequests/d;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->d(Lcom/dropbox/core/v2/filerequests/d;)Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;

    move-result-object p0

    return-object p0
.end method

.method public listV2()Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/filerequests/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/c;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->e(Lcom/dropbox/core/v2/filerequests/c;)Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;

    move-result-object p0

    return-object p0
.end method

.method public listV2(J)Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/filerequests/c;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/filerequests/c;-><init>(J)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->e(Lcom/dropbox/core/v2/filerequests/c;)Lcom/dropbox/core/v2/filerequests/ListFileRequestsV2Result;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->f(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object p0

    return-object p0
.end method

.method public updateBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->f(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;-><init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;)V

    return-object v0
.end method
