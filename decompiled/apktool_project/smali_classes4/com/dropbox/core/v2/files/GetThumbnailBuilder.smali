.class public Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field public final d:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->c:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->d:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

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
.method public start()Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->d:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->build()Lcom/dropbox/core/v2/files/ThumbnailArg;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->c:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->getHeaders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->A(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method

.method public withFormat(Lcom/dropbox/core/v2/files/ThumbnailFormat;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->d:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->withFormat(Lcom/dropbox/core/v2/files/ThumbnailFormat;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/ThumbnailMode;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->d:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->withMode(Lcom/dropbox/core/v2/files/ThumbnailMode;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    return-object p0
.end method

.method public withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->d:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    return-object p0
.end method
