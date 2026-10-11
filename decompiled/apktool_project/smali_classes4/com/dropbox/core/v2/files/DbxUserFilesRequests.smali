.class public Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method public A(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/ThumbnailArg;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_thumbnail"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->b:Lcom/dropbox/core/v2/files/ThumbnailArg$a;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$a;->b:Lcom/dropbox/core/v2/files/FileMetadata$a;

    sget-object v8, Lcom/dropbox/core/v2/files/ThumbnailError$b;->b:Lcom/dropbox/core/v2/files/ThumbnailError$b;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/ThumbnailErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ThumbnailError;

    const-string v1, "2/files/get_thumbnail"

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/dropbox/core/v2/files/ThumbnailErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ThumbnailError;)V

    throw p1
.end method

.method public B(Lcom/dropbox/core/v2/files/h;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetThumbnailBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_thumbnail_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/h$a;->b:Lcom/dropbox/core/v2/files/h$a;

    sget-object v6, Lcom/dropbox/core/v2/files/GetThumbnailBatchResult$a;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/GetThumbnailBatchError$b;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchError;

    const-string v2, "2/files/get_thumbnail_batch"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetThumbnailBatchError;)V

    throw p1
.end method

.method public C(Lcom/dropbox/core/v2/files/ThumbnailV2Arg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/ThumbnailV2Arg;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/PreviewResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailV2ErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_thumbnail_v2"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$a;->b:Lcom/dropbox/core/v2/files/ThumbnailV2Arg$a;

    sget-object v7, Lcom/dropbox/core/v2/files/PreviewResult$a;->b:Lcom/dropbox/core/v2/files/PreviewResult$a;

    sget-object v8, Lcom/dropbox/core/v2/files/ThumbnailV2Error$b;->b:Lcom/dropbox/core/v2/files/ThumbnailV2Error$b;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/ThumbnailV2ErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    const-string v1, "2/files/get_thumbnail_v2"

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/dropbox/core/v2/files/ThumbnailV2ErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ThumbnailV2Error;)V

    throw p1
.end method

.method public D(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderArg$a;->b:Lcom/dropbox/core/v2/files/ListFolderArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderResult$a;->b:Lcom/dropbox/core/v2/files/ListFolderResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderError$b;->b:Lcom/dropbox/core/v2/files/ListFolderError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/ListFolderErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderError;

    const-string v2, "2/files/list_folder"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/ListFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderError;)V

    throw p1
.end method

.method public E(Lcom/dropbox/core/v2/files/i;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/i$a;->b:Lcom/dropbox/core/v2/files/i$a;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderResult$a;->b:Lcom/dropbox/core/v2/files/ListFolderResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderContinueError$b;->b:Lcom/dropbox/core/v2/files/ListFolderContinueError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    const-string v2, "2/files/list_folder/continue"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderContinueError;)V

    throw p1
.end method

.method public F(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder/get_latest_cursor"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderArg$a;->b:Lcom/dropbox/core/v2/files/ListFolderArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult$a;->b:Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderError$b;->b:Lcom/dropbox/core/v2/files/ListFolderError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/ListFolderErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderError;

    const-string v2, "2/files/list_folder/get_latest_cursor"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/ListFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderError;)V

    throw p1
.end method

.method public G(Lcom/dropbox/core/v2/files/j;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder/longpoll"

    const/4 v4, 0x1

    sget-object v5, Lcom/dropbox/core/v2/files/j$a;->b:Lcom/dropbox/core/v2/files/j$a;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;->b:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderLongpollError$b;->b:Lcom/dropbox/core/v2/files/ListFolderLongpollError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    const-string v2, "2/files/list_folder/longpoll"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderLongpollError;)V

    throw p1
.end method

.method public H(Lcom/dropbox/core/v2/files/ListRevisionsArg;)Lcom/dropbox/core/v2/files/ListRevisionsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListRevisionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_revisions"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListRevisionsArg$a;->b:Lcom/dropbox/core/v2/files/ListRevisionsArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/ListRevisionsResult$a;->b:Lcom/dropbox/core/v2/files/ListRevisionsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/ListRevisionsError$b;->b:Lcom/dropbox/core/v2/files/ListRevisionsError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/ListRevisionsErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListRevisionsError;

    const-string v2, "2/files/list_revisions"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/ListRevisionsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListRevisionsError;)V

    throw p1
.end method

.method public I(Lcom/dropbox/core/v2/files/k;)Lcom/dropbox/core/v2/files/LockFileBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/LockFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/lock_file_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/k$a;->b:Lcom/dropbox/core/v2/files/k$a;

    sget-object v6, Lcom/dropbox/core/v2/files/LockFileBatchResult$a;->b:Lcom/dropbox/core/v2/files/LockFileBatchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/LockFileError$b;->b:Lcom/dropbox/core/v2/files/LockFileError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/LockFileBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/LockFileErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/LockFileError;

    const-string v2, "2/files/lock_file_batch"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/LockFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/LockFileError;)V

    throw p1
.end method

.method public J(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$a;->b:Lcom/dropbox/core/v2/files/RelocationArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$a;->b:Lcom/dropbox/core/v2/files/Metadata$a;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$b;->b:Lcom/dropbox/core/v2/files/RelocationError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationError;

    const-string v2, "2/files/move"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw p1
.end method

.method public K(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationBatchArg$a;->b:Lcom/dropbox/core/v2/files/RelocationBatchArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error response for \"move_batch\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw p1
.end method

.method public L(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$b;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/PollError;

    const-string v2, "2/files/move_batch/check"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw p1
.end method

.method public M(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move_batch/check_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus$b;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/PollError;

    const-string v2, "2/files/move_batch/check_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw p1
.end method

.method public N(Lcom/dropbox/core/v2/files/MoveBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move_batch_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/MoveBatchArg$a;->b:Lcom/dropbox/core/v2/files/MoveBatchArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchV2Launch$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchV2Launch$b;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error response for \"move_batch_v2\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw p1
.end method

.method public O(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$a;->b:Lcom/dropbox/core/v2/files/RelocationArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationResult$a;->b:Lcom/dropbox/core/v2/files/RelocationResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$b;->b:Lcom/dropbox/core/v2/files/RelocationError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationError;

    const-string v2, "2/files/move_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw p1
.end method

.method public P(Lcom/dropbox/core/v2/files/DeleteArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/permanently_delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteArg$a;->b:Lcom/dropbox/core/v2/files/DeleteArg$a;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/files/DeleteError$b;->b:Lcom/dropbox/core/v2/files/DeleteError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/DeleteErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/DeleteError;

    const-string v2, "2/files/permanently_delete"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DeleteError;)V

    throw p1
.end method

.method public Q(Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    const-string v2, "2/files/properties/add"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)V

    throw p1
.end method

.method public R(Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/overwrite"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    const-string v2, "2/files/properties/overwrite"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)V

    throw p1
.end method

.method public S(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg$Serializer;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    const-string v2, "2/files/properties/remove"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)V

    throw p1
.end method

.method public T(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/template/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/GetTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/GetTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/GetTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    const-string v2, "2/files/properties/template/get"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw p1
.end method

.method public U(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    const-string v2, "2/files/properties/update"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)V

    throw p1
.end method

.method public V(Lcom/dropbox/core/v2/files/n;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RestoreErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/restore"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/n$a;->b:Lcom/dropbox/core/v2/files/n$a;

    sget-object v6, Lcom/dropbox/core/v2/files/FileMetadata$a;->b:Lcom/dropbox/core/v2/files/FileMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/files/RestoreError$b;->b:Lcom/dropbox/core/v2/files/RestoreError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/FileMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/RestoreErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RestoreError;

    const-string v2, "2/files/restore"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/RestoreErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RestoreError;)V

    throw p1
.end method

.method public W(Lcom/dropbox/core/v2/files/p;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveUrlErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/save_url"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/p$a;->b:Lcom/dropbox/core/v2/files/p$a;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveUrlResult$b;->b:Lcom/dropbox/core/v2/files/SaveUrlResult$b;

    sget-object v7, Lcom/dropbox/core/v2/files/SaveUrlError$b;->b:Lcom/dropbox/core/v2/files/SaveUrlError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SaveUrlResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/SaveUrlErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SaveUrlError;

    const-string v2, "2/files/save_url"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/SaveUrlErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SaveUrlError;)V

    throw p1
.end method

.method public X(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/save_url/check_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$b;->b:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$b;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/PollError;

    const-string v2, "2/files/save_url/check_job_status"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw p1
.end method

.method public Y(Lcom/dropbox/core/v2/files/SearchArg;)Lcom/dropbox/core/v2/files/SearchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/search"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/SearchArg$a;->b:Lcom/dropbox/core/v2/files/SearchArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/SearchResult$a;->b:Lcom/dropbox/core/v2/files/SearchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/SearchError$b;->b:Lcom/dropbox/core/v2/files/SearchError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SearchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/SearchErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SearchError;

    const-string v2, "2/files/search"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/SearchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SearchError;)V

    throw p1
.end method

.method public Z(Lcom/dropbox/core/v2/files/q;)Lcom/dropbox/core/v2/files/SearchV2Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/search/continue_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/q$a;->b:Lcom/dropbox/core/v2/files/q$a;

    sget-object v6, Lcom/dropbox/core/v2/files/SearchV2Result$a;->b:Lcom/dropbox/core/v2/files/SearchV2Result$a;

    sget-object v7, Lcom/dropbox/core/v2/files/SearchError$b;->b:Lcom/dropbox/core/v2/files/SearchError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SearchV2Result;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/SearchErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SearchError;

    const-string v2, "2/files/search/continue_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/SearchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SearchError;)V

    throw p1
.end method

.method public a(Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/alpha/get_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$a;->b:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$a;->b:Lcom/dropbox/core/v2/files/Metadata$a;

    sget-object v7, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$b;->b:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    const-string v2, "2/files/alpha/get_metadata"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)V

    throw p1
.end method

.method public a0(Lcom/dropbox/core/v2/files/SearchV2Arg;)Lcom/dropbox/core/v2/files/SearchV2Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/search_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/SearchV2Arg$a;->b:Lcom/dropbox/core/v2/files/SearchV2Arg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/SearchV2Result$a;->b:Lcom/dropbox/core/v2/files/SearchV2Result$a;

    sget-object v7, Lcom/dropbox/core/v2/files/SearchError$b;->b:Lcom/dropbox/core/v2/files/SearchError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SearchV2Result;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/SearchErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SearchError;

    const-string v2, "2/files/search_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/SearchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SearchError;)V

    throw p1
.end method

.method public alphaGetMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a(Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public alphaGetMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->i(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;)V

    return-object v0
.end method

.method public alphaUpload(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->b(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object p0

    return-object p0
.end method

.method public alphaUploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;)V

    return-object v0
.end method

.method public b(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/alpha/upload"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$a;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/v2/files/AlphaUploadUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method public b0(Lcom/dropbox/core/v2/files/r;)Lcom/dropbox/core/v2/files/LockFileBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/LockFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/unlock_file_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/r$a;->b:Lcom/dropbox/core/v2/files/r$a;

    sget-object v6, Lcom/dropbox/core/v2/files/LockFileBatchResult$a;->b:Lcom/dropbox/core/v2/files/LockFileBatchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/LockFileError$b;->b:Lcom/dropbox/core/v2/files/LockFileError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/LockFileBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/LockFileErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/LockFileError;

    const-string v2, "2/files/unlock_file_batch"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/LockFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/LockFileError;)V

    throw p1
.end method

.method public c(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$a;->b:Lcom/dropbox/core/v2/files/RelocationArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$a;->b:Lcom/dropbox/core/v2/files/Metadata$a;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$b;->b:Lcom/dropbox/core/v2/files/RelocationError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationError;

    const-string v2, "2/files/copy"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw p1
.end method

.method public c0(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CommitInfo$a;->b:Lcom/dropbox/core/v2/files/CommitInfo$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/UploadUploader;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/v2/files/UploadUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->c(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public copyBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->d(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object p0

    return-object p0
.end method

.method public copyBatchBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/CopyBatchBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/CopyBatchBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;->f(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/CopyBatchBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/CopyBatchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;)V

    return-object v0
.end method

.method public copyBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->e(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object p0

    return-object p0
.end method

.method public copyBatchCheckV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->f(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;

    move-result-object p0

    return-object p0
.end method

.method public copyBatchV2(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/m;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/m;-><init>(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->g(Lcom/dropbox/core/v2/files/m;)Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;

    move-result-object p0

    return-object p0
.end method

.method public copyBatchV2(Ljava/util/List;Z)Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;Z)",
            "Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/files/m;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/m;-><init>(Ljava/util/List;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->g(Lcom/dropbox/core/v2/files/m;)Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;

    move-result-object p0

    return-object p0
.end method

.method public copyBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/CopyBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object p1

    new-instance p2, Lcom/dropbox/core/v2/files/CopyBuilder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/files/CopyBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object p2
.end method

.method public copyReferenceGet(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/e;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->h(Lcom/dropbox/core/v2/files/e;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;

    move-result-object p0

    return-object p0
.end method

.method public copyReferenceSave(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/o;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->i(Lcom/dropbox/core/v2/files/o;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;

    move-result-object p0

    return-object p0
.end method

.method public copyV2(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->j(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;

    move-result-object p0

    return-object p0
.end method

.method public copyV2Builder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/CopyV2Builder;
    .locals 0

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object p1

    new-instance p2, Lcom/dropbox/core/v2/files/CopyV2Builder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/files/CopyV2Builder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object p2
.end method

.method public createFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->k(Lcom/dropbox/core/v2/files/a;)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object p0

    return-object p0
.end method

.method public createFolder(Ljava/lang/String;Z)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/files/a;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/a;-><init>(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->k(Lcom/dropbox/core/v2/files/a;)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object p0

    return-object p0
.end method

.method public createFolderBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->l(Lcom/dropbox/core/v2/files/CreateFolderBatchArg;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    move-result-object p0

    return-object p0
.end method

.method public createFolderBatchBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/CreateFolderBatchBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/files/CreateFolderBatchBuilder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->d(Ljava/util/List;)Lcom/dropbox/core/v2/files/CreateFolderBatchArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/CreateFolderBatchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CreateFolderBatchArg$Builder;)V

    return-object v0
.end method

.method public createFolderBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->m(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    move-result-object p0

    return-object p0
.end method

.method public createFolderV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CreateFolderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->n(Lcom/dropbox/core/v2/files/a;)Lcom/dropbox/core/v2/files/CreateFolderResult;

    move-result-object p0

    return-object p0
.end method

.method public createFolderV2(Ljava/lang/String;Z)Lcom/dropbox/core/v2/files/CreateFolderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/files/a;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/a;-><init>(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->n(Lcom/dropbox/core/v2/files/a;)Lcom/dropbox/core/v2/files/CreateFolderResult;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationBatchArg$a;->b:Lcom/dropbox/core/v2/files/RelocationBatchArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error response for \"copy_batch\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw p1
.end method

.method public d0(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/append"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionCursor$a;->b:Lcom/dropbox/core/v2/files/UploadSessionCursor$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->o(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 4
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'parentRev\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'parentRev\' is shorter than 9"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->o(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public deleteBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/DeleteArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/DeleteBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/b;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->p(Lcom/dropbox/core/v2/files/b;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object p0

    return-object p0
.end method

.method public deleteBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->q(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object p0

    return-object p0
.end method

.method public deleteV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->r(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/DeleteResult;

    move-result-object p0

    return-object p0
.end method

.method public deleteV2(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 4
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'parentRev\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'parentRev\' is shorter than 9"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->r(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/DeleteResult;

    move-result-object p0

    return-object p0
.end method

.method public download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/c;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/c;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->s(Lcom/dropbox/core/v2/files/c;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 4
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'rev\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'rev\' is shorter than 9"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lcom/dropbox/core/v2/files/c;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->s(Lcom/dropbox/core/v2/files/c;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public downloadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DownloadBuilder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/DownloadBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/DownloadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method public downloadZip(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/DownloadZipResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadZipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/d;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/d;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->t(Lcom/dropbox/core/v2/files/d;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public downloadZipBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DownloadZipBuilder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/DownloadZipBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/DownloadZipBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$b;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/PollError;

    const-string v2, "2/files/copy_batch/check"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw p1
.end method

.method public e0(Lcom/dropbox/core/v2/files/s;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/append_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/s$a;->b:Lcom/dropbox/core/v2/files/s$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method public export(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/ExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ExportErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/ExportArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ExportArg;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->u(Lcom/dropbox/core/v2/files/ExportArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public exportBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ExportBuilder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/ExportBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/ExportBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method public f(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_batch/check_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus$b;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/PollError;

    const-string v2, "2/files/copy_batch/check_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw p1
.end method

.method public f0(Lcom/dropbox/core/v2/files/UploadSessionFinishArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/finish"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method public g(Lcom/dropbox/core/v2/files/m;)Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_batch_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/m$a;->b:Lcom/dropbox/core/v2/files/m$a;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchV2Launch$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchV2Launch$b;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error response for \"copy_batch_v2\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw p1
.end method

.method public g0(Lcom/dropbox/core/v2/files/t;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/finish_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/t$a;->b:Lcom/dropbox/core/v2/files/t$a;

    sget-object v6, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$b;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$b;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error response for \"upload_session/finish_batch\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw p1
.end method

.method public getFileLockBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/LockFileBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/LockFileArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/LockFileBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/LockFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/k;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/k;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->v(Lcom/dropbox/core/v2/files/k;)Lcom/dropbox/core/v2/files/LockFileBatchResult;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->w(Lcom/dropbox/core/v2/files/GetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataArg;->f(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/GetMetadataBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;)V

    return-object v0
.end method

.method public getPreview(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/l;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/l;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->x(Lcom/dropbox/core/v2/files/l;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public getPreview(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 4
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'rev\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'rev\' is shorter than 9"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lcom/dropbox/core/v2/files/l;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->x(Lcom/dropbox/core/v2/files/l;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetPreviewBuilder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/GetPreviewBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTemporaryLink(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->y(Lcom/dropbox/core/v2/files/f;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;

    move-result-object p0

    return-object p0
.end method

.method public getTemporaryUploadLink(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/GetTemporaryUploadLinkResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/g;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/g;-><init>(Lcom/dropbox/core/v2/files/CommitInfo;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->z(Lcom/dropbox/core/v2/files/g;)Lcom/dropbox/core/v2/files/GetTemporaryUploadLinkResult;

    move-result-object p0

    return-object p0
.end method

.method public getTemporaryUploadLink(Lcom/dropbox/core/v2/files/CommitInfo;D)Lcom/dropbox/core/v2/files/GetTemporaryUploadLinkResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x40cc200000000000L    # 14400.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/files/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/g;-><init>(Lcom/dropbox/core/v2/files/CommitInfo;D)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->z(Lcom/dropbox/core/v2/files/g;)Lcom/dropbox/core/v2/files/GetTemporaryUploadLinkResult;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'duration\' is larger than 14400.0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'duration\' is smaller than 60.0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getThumbnail(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->A(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/ThumbnailArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetThumbnailBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/h;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/h;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->B(Lcom/dropbox/core/v2/files/h;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;)V

    return-object v0
.end method

.method public getThumbnailV2(Lcom/dropbox/core/v2/files/PathOrLink;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/PathOrLink;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/PreviewResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailV2ErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;-><init>(Lcom/dropbox/core/v2/files/PathOrLink;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->C(Lcom/dropbox/core/v2/files/ThumbnailV2Arg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailV2Builder(Lcom/dropbox/core/v2/files/PathOrLink;)Lcom/dropbox/core/v2/files/DbxUserGetThumbnailV2Builder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->e(Lcom/dropbox/core/v2/files/PathOrLink;)Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/DbxUserGetThumbnailV2Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/DbxUserGetThumbnailV2Builder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;)V

    return-object v0
.end method

.method public h(Lcom/dropbox/core/v2/files/e;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_reference/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/e$a;->b:Lcom/dropbox/core/v2/files/e$a;

    sget-object v6, Lcom/dropbox/core/v2/files/GetCopyReferenceResult$a;->b:Lcom/dropbox/core/v2/files/GetCopyReferenceResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/GetCopyReferenceError$b;->b:Lcom/dropbox/core/v2/files/GetCopyReferenceError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetCopyReferenceError;

    const-string v2, "2/files/copy_reference/get"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetCopyReferenceError;)V

    throw p1
.end method

.method public h0(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/finish_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$b;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$b;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/PollError;

    const-string v2, "2/files/upload_session/finish_batch/check"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw p1
.end method

.method public i(Lcom/dropbox/core/v2/files/o;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_reference/save"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/o$a;->b:Lcom/dropbox/core/v2/files/o$a;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveCopyReferenceResult$a;->b:Lcom/dropbox/core/v2/files/SaveCopyReferenceResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$b;->b:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    const-string v2, "2/files/copy_reference/save"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SaveCopyReferenceError;)V

    throw p1
.end method

.method public i0(Lcom/dropbox/core/v2/files/u;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/start"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/u$a;->b:Lcom/dropbox/core/v2/files/u$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/v2/files/UploadSessionStartUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method public j(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$a;->b:Lcom/dropbox/core/v2/files/RelocationArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationResult$a;->b:Lcom/dropbox/core/v2/files/RelocationResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$b;->b:Lcom/dropbox/core/v2/files/RelocationError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationError;

    const-string v2, "2/files/copy_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw p1
.end method

.method public k(Lcom/dropbox/core/v2/files/a;)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/create_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/a$a;->b:Lcom/dropbox/core/v2/files/a$a;

    sget-object v6, Lcom/dropbox/core/v2/files/FolderMetadata$a;->b:Lcom/dropbox/core/v2/files/FolderMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/files/CreateFolderError$b;->b:Lcom/dropbox/core/v2/files/CreateFolderError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/FolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/CreateFolderErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/CreateFolderError;

    const-string v2, "2/files/create_folder"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/CreateFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/CreateFolderError;)V

    throw p1
.end method

.method public l(Lcom/dropbox/core/v2/files/CreateFolderBatchArg;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/create_folder_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CreateFolderBatchArg$a;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$b;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$b;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error response for \"create_folder_batch\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw p1
.end method

.method public listFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->D(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object p0

    return-object p0
.end method

.method public listFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderArg;->k(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/ListFolderBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V

    return-object v0
.end method

.method public listFolderContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/i;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->E(Lcom/dropbox/core/v2/files/i;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object p0

    return-object p0
.end method

.method public listFolderGetLatestCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->F(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;

    move-result-object p0

    return-object p0
.end method

.method public listFolderGetLatestCursorBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderArg;->k(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V

    return-object v0
.end method

.method public listFolderLongpoll(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/j;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/j;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->G(Lcom/dropbox/core/v2/files/j;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    move-result-object p0

    return-object p0
.end method

.method public listFolderLongpoll(Ljava/lang/String;J)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const-wide/16 v0, 0x1e

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1e0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/files/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/j;-><init>(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->G(Lcom/dropbox/core/v2/files/j;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'timeout\' is larger than 480L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'timeout\' is smaller than 30L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public listRevisions(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListRevisionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListRevisionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->H(Lcom/dropbox/core/v2/files/ListRevisionsArg;)Lcom/dropbox/core/v2/files/ListRevisionsResult;

    move-result-object p0

    return-object p0
.end method

.method public listRevisionsBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListRevisionsBuilder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg;->d(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;)V

    return-object v0
.end method

.method public lockFileBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/LockFileBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/LockFileArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/LockFileBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/LockFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/k;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/k;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->I(Lcom/dropbox/core/v2/files/k;)Lcom/dropbox/core/v2/files/LockFileBatchResult;

    move-result-object p0

    return-object p0
.end method

.method public m(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/create_folder_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$b;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$b;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/PollError;

    const-string v2, "2/files/create_folder_batch/check"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw p1
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->J(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public moveBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->K(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object p0

    return-object p0
.end method

.method public moveBatchBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/MoveBatchBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/MoveBatchBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;->f(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/MoveBatchBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/MoveBatchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;)V

    return-object v0
.end method

.method public moveBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->L(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object p0

    return-object p0
.end method

.method public moveBatchCheckV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->M(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;

    move-result-object p0

    return-object p0
.end method

.method public moveBatchV2(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/MoveBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/MoveBatchArg;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->N(Lcom/dropbox/core/v2/files/MoveBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;

    move-result-object p0

    return-object p0
.end method

.method public moveBatchV2Builder(Ljava/util/List;)Lcom/dropbox/core/v2/files/MoveBatchV2Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/MoveBatchV2Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/dropbox/core/v2/files/MoveBatchArg;->e(Ljava/util/List;)Lcom/dropbox/core/v2/files/MoveBatchArg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/MoveBatchV2Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/MoveBatchV2Builder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/MoveBatchArg$Builder;)V

    return-object v0
.end method

.method public moveBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/MoveBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object p1

    new-instance p2, Lcom/dropbox/core/v2/files/MoveBuilder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/files/MoveBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object p2
.end method

.method public moveV2(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->O(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;

    move-result-object p0

    return-object p0
.end method

.method public moveV2Builder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/MoveV2Builder;
    .locals 0

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object p1

    new-instance p2, Lcom/dropbox/core/v2/files/MoveV2Builder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/files/MoveV2Builder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object p2
.end method

.method public n(Lcom/dropbox/core/v2/files/a;)Lcom/dropbox/core/v2/files/CreateFolderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/create_folder_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/a$a;->b:Lcom/dropbox/core/v2/files/a$a;

    sget-object v6, Lcom/dropbox/core/v2/files/CreateFolderResult$a;->b:Lcom/dropbox/core/v2/files/CreateFolderResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/CreateFolderError$b;->b:Lcom/dropbox/core/v2/files/CreateFolderError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/CreateFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/CreateFolderErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/CreateFolderError;

    const-string v2, "2/files/create_folder_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/CreateFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/CreateFolderError;)V

    throw p1
.end method

.method public o(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteArg$a;->b:Lcom/dropbox/core/v2/files/DeleteArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$a;->b:Lcom/dropbox/core/v2/files/Metadata$a;

    sget-object v7, Lcom/dropbox/core/v2/files/DeleteError$b;->b:Lcom/dropbox/core/v2/files/DeleteError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/DeleteErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/DeleteError;

    const-string v2, "2/files/delete"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DeleteError;)V

    throw p1
.end method

.method public p(Lcom/dropbox/core/v2/files/b;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/delete_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/b$a;->b:Lcom/dropbox/core/v2/files/b$a;

    sget-object v6, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$b;->b:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$b;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error response for \"delete_batch\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw p1
.end method

.method public permanentlyDelete(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->P(Lcom/dropbox/core/v2/files/DeleteArg;)V

    return-void
.end method

.method public permanentlyDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 4
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'parentRev\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'parentRev\' is shorter than 9"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->P(Lcom/dropbox/core/v2/files/DeleteArg;)V

    return-void
.end method

.method public propertiesAdd(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->Q(Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;)V

    return-void
.end method

.method public propertiesOverwrite(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->R(Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;)V

    return-void
.end method

.method public propertiesRemove(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->S(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;)V

    return-void
.end method

.method public propertiesTemplateGet(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->T(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;

    move-result-object p0

    return-object p0
.end method

.method public propertiesTemplateList()Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/template/list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    const-string v3, "2/files/properties/template/list"

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v0
.end method

.method public propertiesUpdate(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->U(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;)V

    return-void
.end method

.method public q(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/delete_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$b;->b:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$b;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/PollError;

    const-string v2, "2/files/delete_batch/check"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw p1
.end method

.method public r(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/DeleteResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/delete_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteArg$a;->b:Lcom/dropbox/core/v2/files/DeleteArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/DeleteResult$a;->b:Lcom/dropbox/core/v2/files/DeleteResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/DeleteError$b;->b:Lcom/dropbox/core/v2/files/DeleteError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/DeleteResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/DeleteErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/DeleteError;

    const-string v2, "2/files/delete_v2"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DeleteError;)V

    throw p1
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RestoreErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/n;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->V(Lcom/dropbox/core/v2/files/n;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object p0

    return-object p0
.end method

.method public s(Lcom/dropbox/core/v2/files/c;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/c;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/download"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/c$a;->b:Lcom/dropbox/core/v2/files/c$a;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$a;->b:Lcom/dropbox/core/v2/files/FileMetadata$a;

    sget-object v8, Lcom/dropbox/core/v2/files/DownloadError$b;->b:Lcom/dropbox/core/v2/files/DownloadError$b;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/DownloadErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/DownloadError;

    const-string v1, "2/files/download"

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/dropbox/core/v2/files/DownloadErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DownloadError;)V

    throw p1
.end method

.method public saveUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveUrlErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/p;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->W(Lcom/dropbox/core/v2/files/p;)Lcom/dropbox/core/v2/files/SaveUrlResult;

    move-result-object p0

    return-object p0
.end method

.method public saveUrlCheckJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->X(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object p0

    return-object p0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/SearchArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/SearchArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->Y(Lcom/dropbox/core/v2/files/SearchArg;)Lcom/dropbox/core/v2/files/SearchResult;

    move-result-object p0

    return-object p0
.end method

.method public searchBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/SearchArg;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchArg$Builder;

    move-result-object p1

    new-instance p2, Lcom/dropbox/core/v2/files/SearchBuilder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/files/SearchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/SearchArg$Builder;)V

    return-object p2
.end method

.method public searchContinueV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchV2Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/q;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->Z(Lcom/dropbox/core/v2/files/q;)Lcom/dropbox/core/v2/files/SearchV2Result;

    move-result-object p0

    return-object p0
.end method

.method public searchV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchV2Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/SearchV2Arg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/SearchV2Arg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a0(Lcom/dropbox/core/v2/files/SearchV2Arg;)Lcom/dropbox/core/v2/files/SearchV2Result;

    move-result-object p0

    return-object p0
.end method

.method public searchV2Builder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchV2Builder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchV2Arg;->e(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/SearchV2Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/SearchV2Builder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;)V

    return-object v0
.end method

.method public t(Lcom/dropbox/core/v2/files/d;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/d;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/DownloadZipResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadZipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/download_zip"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/d$a;->b:Lcom/dropbox/core/v2/files/d$a;

    sget-object v7, Lcom/dropbox/core/v2/files/DownloadZipResult$a;->b:Lcom/dropbox/core/v2/files/DownloadZipResult$a;

    sget-object v8, Lcom/dropbox/core/v2/files/DownloadZipError$b;->b:Lcom/dropbox/core/v2/files/DownloadZipError$b;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/DownloadZipErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/DownloadZipError;

    const-string v1, "2/files/download_zip"

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/dropbox/core/v2/files/DownloadZipErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DownloadZipError;)V

    throw p1
.end method

.method public u(Lcom/dropbox/core/v2/files/ExportArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/ExportArg;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/ExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ExportErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/export"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/ExportArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ExportArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ExportResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ExportResult$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/files/ExportError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ExportError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/ExportErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ExportError;

    const-string v1, "2/files/export"

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/dropbox/core/v2/files/ExportErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ExportError;)V

    throw p1
.end method

.method public unlockFileBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/LockFileBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/UnlockFileArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/LockFileBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/LockFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/r;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/r;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->b0(Lcom/dropbox/core/v2/files/r;)Lcom/dropbox/core/v2/files/LockFileBatchResult;

    move-result-object p0

    return-object p0
.end method

.method public upload(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfo;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->c0(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadUploader;

    move-result-object p0

    return-object p0
.end method

.method public uploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfo;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/UploadBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/UploadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfo$Builder;)V

    return-object v0
.end method

.method public uploadSessionAppend(Ljava/lang/String;J)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionCursor;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/UploadSessionCursor;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->d0(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;

    move-result-object p0

    return-object p0
.end method

.method public uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/s;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/s;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->e0(Lcom/dropbox/core/v2/files/s;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    move-result-object p0

    return-object p0
.end method

.method public uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/files/s;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/s;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->e0(Lcom/dropbox/core/v2/files/s;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    move-result-object p0

    return-object p0
.end method

.method public uploadSessionFinish(Lcom/dropbox/core/v2/files/UploadSessionCursor;Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Lcom/dropbox/core/v2/files/CommitInfo;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->f0(Lcom/dropbox/core/v2/files/UploadSessionFinishArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;

    move-result-object p0

    return-object p0
.end method

.method public uploadSessionFinishBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/UploadSessionFinishArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/files/t;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/t;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->g0(Lcom/dropbox/core/v2/files/t;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    move-result-object p0

    return-object p0
.end method

.method public uploadSessionFinishBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->h0(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object p0

    return-object p0
.end method

.method public uploadSessionStart()Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/u;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/u;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->i0(Lcom/dropbox/core/v2/files/u;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    move-result-object p0

    return-object p0
.end method

.method public uploadSessionStart(Z)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/files/u;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/u;-><init>(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->i0(Lcom/dropbox/core/v2/files/u;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    move-result-object p0

    return-object p0
.end method

.method public v(Lcom/dropbox/core/v2/files/k;)Lcom/dropbox/core/v2/files/LockFileBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/LockFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_file_lock_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/k$a;->b:Lcom/dropbox/core/v2/files/k$a;

    sget-object v6, Lcom/dropbox/core/v2/files/LockFileBatchResult$a;->b:Lcom/dropbox/core/v2/files/LockFileBatchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/LockFileError$b;->b:Lcom/dropbox/core/v2/files/LockFileError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/LockFileBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/LockFileErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/LockFileError;

    const-string v2, "2/files/get_file_lock_batch"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/LockFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/LockFileError;)V

    throw p1
.end method

.method public w(Lcom/dropbox/core/v2/files/GetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/GetMetadataArg$a;->b:Lcom/dropbox/core/v2/files/GetMetadataArg$a;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$a;->b:Lcom/dropbox/core/v2/files/Metadata$a;

    sget-object v7, Lcom/dropbox/core/v2/files/GetMetadataError$b;->b:Lcom/dropbox/core/v2/files/GetMetadataError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/GetMetadataErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetMetadataError;

    const-string v2, "2/files/get_metadata"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/GetMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetMetadataError;)V

    throw p1
.end method

.method public x(Lcom/dropbox/core/v2/files/l;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/l;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_preview"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/l$a;->b:Lcom/dropbox/core/v2/files/l$a;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$a;->b:Lcom/dropbox/core/v2/files/FileMetadata$a;

    sget-object v8, Lcom/dropbox/core/v2/files/PreviewError$b;->b:Lcom/dropbox/core/v2/files/PreviewError$b;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/PreviewErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/PreviewError;

    const-string v1, "2/files/get_preview"

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/dropbox/core/v2/files/PreviewErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/PreviewError;)V

    throw p1
.end method

.method public y(Lcom/dropbox/core/v2/files/f;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_temporary_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/f$a;->b:Lcom/dropbox/core/v2/files/f$a;

    sget-object v6, Lcom/dropbox/core/v2/files/GetTemporaryLinkResult$a;->b:Lcom/dropbox/core/v2/files/GetTemporaryLinkResult$a;

    sget-object v7, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$b;->b:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    const-string v2, "2/files/get_temporary_link"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetTemporaryLinkError;)V

    throw p1
.end method

.method public z(Lcom/dropbox/core/v2/files/g;)Lcom/dropbox/core/v2/files/GetTemporaryUploadLinkResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_temporary_upload_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/g$a;->b:Lcom/dropbox/core/v2/files/g$a;

    sget-object v6, Lcom/dropbox/core/v2/files/GetTemporaryUploadLinkResult$a;->b:Lcom/dropbox/core/v2/files/GetTemporaryUploadLinkResult$a;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetTemporaryUploadLinkResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error response for \"get_temporary_upload_link\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw p1
.end method
