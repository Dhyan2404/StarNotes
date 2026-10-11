.class public Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field public final b:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;->a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;->b:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

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
.method public start()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;->b:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->build()Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;->a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->m(Lcom/dropbox/core/v2/paper/AddPaperDocUser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;->b:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    return-object p0
.end method

.method public withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;->b:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    return-object p0
.end method
