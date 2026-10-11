.class public Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersRemoveArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected keepAccount:Z

.field protected retainTeamShares:Z

.field protected transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected wipeData:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->wipeData:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->keepAccount:Z

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->retainTeamShares:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'user\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MembersRemoveArg;
    .locals 8

    new-instance v7, Lcom/dropbox/core/v2/team/MembersRemoveArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->wipeData:Z

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->keepAccount:Z

    iget-boolean v6, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->retainTeamShares:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/MembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;ZLcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/UserSelectorArg;ZZ)V

    return-object v7
.end method

.method public withKeepAccount(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->keepAccount:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->keepAccount:Z

    :goto_0
    return-object p0
.end method

.method public withRetainTeamShares(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->retainTeamShares:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->retainTeamShares:Z

    :goto_0
    return-object p0
.end method

.method public withTransferAdminId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object p0
.end method

.method public withTransferDestId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object p0
.end method

.method public withWipeData(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->wipeData:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->wipeData:Z

    :goto_0
    return-object p0
.end method
