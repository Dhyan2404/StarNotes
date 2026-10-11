.class public Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field public final b:Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;->a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;->b:Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/paper/PaperFolderCreateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/PaperFolderCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;->b:Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;->build()Lcom/dropbox/core/v2/paper/PaperFolderCreateArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;->a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->q(Lcom/dropbox/core/v2/paper/PaperFolderCreateArg;)Lcom/dropbox/core/v2/paper/PaperFolderCreateResult;

    move-result-object p0

    return-object p0
.end method

.method public withIsTeamFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;->b:Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;->withIsTeamFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;

    return-object p0
.end method

.method public withParentFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/paper/FoldersCreateBuilder;->b:Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;->withParentFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/PaperFolderCreateArg$Builder;

    return-object p0
.end method
