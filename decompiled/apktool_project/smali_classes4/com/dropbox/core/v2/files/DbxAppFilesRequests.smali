.class public Lcom/dropbox/core/v2/files/DbxAppFilesRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/DbxAppFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method public a(Lcom/dropbox/core/v2/files/ThumbnailV2Arg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
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
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxAppFilesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

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

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/files/DbxAppFilesRequests;->a(Lcom/dropbox/core/v2/files/ThumbnailV2Arg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailV2Builder(Lcom/dropbox/core/v2/files/PathOrLink;)Lcom/dropbox/core/v2/files/DbxAppGetThumbnailV2Builder;
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->e(Lcom/dropbox/core/v2/files/PathOrLink;)Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/v2/files/DbxAppGetThumbnailV2Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/DbxAppGetThumbnailV2Builder;-><init>(Lcom/dropbox/core/v2/files/DbxAppFilesRequests;Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;)V

    return-object v0
.end method
