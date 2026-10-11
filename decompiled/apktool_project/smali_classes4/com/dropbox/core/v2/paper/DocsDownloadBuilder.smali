.class public Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<",
        "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/dropbox/core/v2/paper/ExportFormat;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->c:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    iput-object p2, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->e:Lcom/dropbox/core/v2/paper/ExportFormat;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "_client"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public start()Lcom/dropbox/core/DbxDownloader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/paper/f;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->e:Lcom/dropbox/core/v2/paper/ExportFormat;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/f;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->c:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->getHeaders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->c(Lcom/dropbox/core/v2/paper/f;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method
