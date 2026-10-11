.class public Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

.field public final b:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->b:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->b:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->build()Lcom/dropbox/core/v2/team/MembersRemoveArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->R(Lcom/dropbox/core/v2/team/MembersRemoveArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object p0

    return-object p0
.end method

.method public withKeepAccount(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->b:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withKeepAccount(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    return-object p0
.end method

.method public withRetainTeamShares(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->b:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withRetainTeamShares(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    return-object p0
.end method

.method public withTransferAdminId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->b:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withTransferAdminId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    return-object p0
.end method

.method public withTransferDestId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->b:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withTransferDestId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    return-object p0
.end method

.method public withWipeData(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->b:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withWipeData(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    return-object p0
.end method
