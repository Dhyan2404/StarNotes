.class public Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

.field public final b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->build()Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->X(Lcom/dropbox/core/v2/team/MembersSetProfileArg;)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object p0

    return-object p0
.end method

.method public withNewEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    return-object p0
.end method

.method public withNewExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    return-object p0
.end method

.method public withNewGivenName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewGivenName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    return-object p0
.end method

.method public withNewIsDirectoryRestricted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewIsDirectoryRestricted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    return-object p0
.end method

.method public withNewPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    return-object p0
.end method

.method public withNewSurname(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->b:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewSurname(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    return-object p0
.end method
