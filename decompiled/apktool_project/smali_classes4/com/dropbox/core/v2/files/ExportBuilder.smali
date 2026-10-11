.class public Lcom/dropbox/core/v2/files/ExportBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<",
        "Lcom/dropbox/core/v2/files/ExportResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ExportBuilder;->c:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/ExportBuilder;->d:Ljava/lang/String;

    return-void

    :cond_0
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

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ExportBuilder;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/ExportArg;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ExportBuilder;->c:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->getHeaders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->u(Lcom/dropbox/core/v2/files/ExportArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method
