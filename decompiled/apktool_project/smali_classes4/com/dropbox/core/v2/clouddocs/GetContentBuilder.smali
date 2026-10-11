.class public Lcom/dropbox/core/v2/clouddocs/GetContentBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetContentBuilder;->c:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    iput-object p2, p0, Lcom/dropbox/core/v2/clouddocs/GetContentBuilder;->d:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/GetContentBuilder;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/clouddocs/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/GetContentBuilder;->c:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->getHeaders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->a(Lcom/dropbox/core/v2/clouddocs/a;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p0

    return-object p0
.end method
