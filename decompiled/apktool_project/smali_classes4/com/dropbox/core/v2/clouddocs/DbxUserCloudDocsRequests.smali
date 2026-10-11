.class public Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method public a(Lcom/dropbox/core/v2/clouddocs/a;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/clouddocs/a;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/cloud_docs/get_content"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/clouddocs/a$a;->b:Lcom/dropbox/core/v2/clouddocs/a$a;

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    sget-object v8, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError$b;->b:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError$b;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    const-string v1, "2/cloud_docs/get_content"

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;)V

    throw p1
.end method

.method public b(Lcom/dropbox/core/v2/clouddocs/b;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/cloud_docs/get_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/clouddocs/b$a;->b:Lcom/dropbox/core/v2/clouddocs/b$a;

    sget-object v6, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$a;->b:Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$a;

    sget-object v7, Lcom/dropbox/core/v2/clouddocs/GetMetadataError$a;->b:Lcom/dropbox/core/v2/clouddocs/GetMetadataError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataError;

    const-string v2, "2/cloud_docs/get_metadata"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/clouddocs/GetMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/clouddocs/GetMetadataError;)V

    throw p1
.end method

.method public c(Lcom/dropbox/core/v2/clouddocs/c;)Lcom/dropbox/core/v2/clouddocs/LockResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/LockingErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/cloud_docs/lock"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/clouddocs/c$a;->b:Lcom/dropbox/core/v2/clouddocs/c$a;

    sget-object v6, Lcom/dropbox/core/v2/clouddocs/LockResult$a;->b:Lcom/dropbox/core/v2/clouddocs/LockResult$a;

    sget-object v7, Lcom/dropbox/core/v2/clouddocs/LockingError$a;->b:Lcom/dropbox/core/v2/clouddocs/LockingError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/LockResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/clouddocs/LockingErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/LockingError;

    const-string v2, "2/cloud_docs/lock"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/clouddocs/LockingErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/clouddocs/LockingError;)V

    throw p1
.end method

.method public d(Lcom/dropbox/core/v2/clouddocs/RenameArg;)Lcom/dropbox/core/v2/clouddocs/RenameResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/RenameErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/cloud_docs/rename"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/clouddocs/RenameArg$a;->b:Lcom/dropbox/core/v2/clouddocs/RenameArg$a;

    sget-object v6, Lcom/dropbox/core/v2/clouddocs/RenameResult$a;->b:Lcom/dropbox/core/v2/clouddocs/RenameResult$a;

    sget-object v7, Lcom/dropbox/core/v2/clouddocs/RenameError$a;->b:Lcom/dropbox/core/v2/clouddocs/RenameError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/RenameResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/clouddocs/RenameErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/RenameError;

    const-string v2, "2/cloud_docs/rename"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/clouddocs/RenameErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/clouddocs/RenameError;)V

    throw p1
.end method

.method public e(Lcom/dropbox/core/v2/clouddocs/d;)Lcom/dropbox/core/v2/clouddocs/UnlockResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/LockingErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/cloud_docs/unlock"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/clouddocs/d$a;->b:Lcom/dropbox/core/v2/clouddocs/d$a;

    sget-object v6, Lcom/dropbox/core/v2/clouddocs/UnlockResult$a;->b:Lcom/dropbox/core/v2/clouddocs/UnlockResult$a;

    sget-object v7, Lcom/dropbox/core/v2/clouddocs/LockingError$a;->b:Lcom/dropbox/core/v2/clouddocs/LockingError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/UnlockResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/v2/clouddocs/LockingErrorException;

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/LockingError;

    const-string v2, "2/cloud_docs/unlock"

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/dropbox/core/v2/clouddocs/LockingErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/clouddocs/LockingError;)V

    throw p1
.end method

.method public f(Lcom/dropbox/core/v2/clouddocs/e;)Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/cloud_docs/update_content"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/clouddocs/e$a;->b:Lcom/dropbox/core/v2/clouddocs/e$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/clouddocs/a;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a(Lcom/dropbox/core/v2/clouddocs/a;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public getContentBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/GetContentBuilder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/GetContentBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/clouddocs/GetContentBuilder;-><init>(Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetadata()Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/b;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->b(Lcom/dropbox/core/v2/clouddocs/b;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/b;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/clouddocs/b;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->b(Lcom/dropbox/core/v2/clouddocs/b;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'fileId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public lock()Lcom/dropbox/core/v2/clouddocs/LockResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/LockingErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/c;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->c(Lcom/dropbox/core/v2/clouddocs/c;)Lcom/dropbox/core/v2/clouddocs/LockResult;

    move-result-object p0

    return-object p0
.end method

.method public lock(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/LockResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/LockingErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/c;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/clouddocs/c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->c(Lcom/dropbox/core/v2/clouddocs/c;)Lcom/dropbox/core/v2/clouddocs/LockResult;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'fileId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rename()Lcom/dropbox/core/v2/clouddocs/RenameResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/RenameErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/RenameArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/RenameArg;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->d(Lcom/dropbox/core/v2/clouddocs/RenameArg;)Lcom/dropbox/core/v2/clouddocs/RenameResult;

    move-result-object p0

    return-object p0
.end method

.method public renameBuilder()Lcom/dropbox/core/v2/clouddocs/RenameBuilder;
    .locals 2

    invoke-static {}, Lcom/dropbox/core/v2/clouddocs/RenameArg;->c()Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;

    move-result-object v0

    new-instance v1, Lcom/dropbox/core/v2/clouddocs/RenameBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/clouddocs/RenameBuilder;-><init>(Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;)V

    return-object v1
.end method

.method public unlock()Lcom/dropbox/core/v2/clouddocs/UnlockResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/LockingErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/d;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->e(Lcom/dropbox/core/v2/clouddocs/d;)Lcom/dropbox/core/v2/clouddocs/UnlockResult;

    move-result-object p0

    return-object p0
.end method

.method public unlock(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/UnlockResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/LockingErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/d;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/clouddocs/d;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->e(Lcom/dropbox/core/v2/clouddocs/d;)Lcom/dropbox/core/v2/clouddocs/UnlockResult;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'fileId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateContent(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/e;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/clouddocs/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->f(Lcom/dropbox/core/v2/clouddocs/e;)Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;

    move-result-object p0

    return-object p0
.end method

.method public updateContent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/clouddocs/Content;",
            ">;)",
            "Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/clouddocs/Content;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An item in list \'additionalContents\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/clouddocs/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->f(Lcom/dropbox/core/v2/clouddocs/e;)Lcom/dropbox/core/v2/clouddocs/UpdateContentUploader;

    move-result-object p0

    return-object p0
.end method
