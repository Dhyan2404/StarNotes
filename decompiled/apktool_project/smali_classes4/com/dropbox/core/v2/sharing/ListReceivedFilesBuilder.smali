.class public Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

.field public final b:Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;->a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;->b:Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;->b:Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->build()Lcom/dropbox/core/v2/sharing/ListFilesArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;->a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->x(Lcom/dropbox/core/v2/sharing/ListFilesArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;

    move-result-object p0

    return-object p0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;->b:Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;->b:Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    return-object p0
.end method
