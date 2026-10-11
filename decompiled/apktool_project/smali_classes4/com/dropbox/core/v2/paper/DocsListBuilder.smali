.class public Lcom/dropbox/core/v2/paper/DocsListBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field public final b:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

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
.method public start()Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->build()Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->g(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object p0

    return-object p0
.end method

.method public withFilterBy(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;)Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->withFilterBy(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    return-object p0
.end method

.method public withSortBy(Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;)Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->withSortBy(Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    return-object p0
.end method

.method public withSortOrder(Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;)Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->withSortOrder(Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    return-object p0
.end method
