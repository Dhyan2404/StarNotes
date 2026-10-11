.class public Lcom/dropbox/core/v2/team/MembersListBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

.field public final b:Lcom/dropbox/core/v2/team/MembersListArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersListArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->b:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->b:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->build()Lcom/dropbox/core/v2/team/MembersListArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->M(Lcom/dropbox/core/v2/team/MembersListArg;)Lcom/dropbox/core/v2/team/MembersListResult;

    move-result-object p0

    return-object p0
.end method

.method public withIncludeRemoved(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersListBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->b:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->withIncludeRemoved(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/team/MembersListBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->b:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    return-object p0
.end method
