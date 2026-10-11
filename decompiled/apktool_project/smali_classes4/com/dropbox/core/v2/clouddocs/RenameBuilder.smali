.class public Lcom/dropbox/core/v2/clouddocs/RenameBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

.field public final b:Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/RenameBuilder;->a:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/clouddocs/RenameBuilder;->b:Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/clouddocs/RenameResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/clouddocs/RenameErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/RenameBuilder;->b:Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;->build()Lcom/dropbox/core/v2/clouddocs/RenameArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/RenameBuilder;->a:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;->d(Lcom/dropbox/core/v2/clouddocs/RenameArg;)Lcom/dropbox/core/v2/clouddocs/RenameResult;

    move-result-object p0

    return-object p0
.end method

.method public withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/RenameBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/RenameBuilder;->b:Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;->withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/RenameBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/RenameBuilder;->b:Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;->withTitle(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/RenameArg$Builder;

    return-object p0
.end method
