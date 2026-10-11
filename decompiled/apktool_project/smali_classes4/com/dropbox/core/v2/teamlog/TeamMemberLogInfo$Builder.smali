.class public Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected memberExternalId:Ljava/lang/String;

.field protected team:Lcom/dropbox/core/v2/teamlog/TeamLogInfo;

.field protected teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->team:Lcom/dropbox/core/v2/teamlog/TeamLogInfo;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
    .locals 8

    .line 2
    new-instance v7, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->email:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->team:Lcom/dropbox/core/v2/teamlog/TeamLogInfo;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/TeamLogInfo;)V

    return-object v7
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    move-result-object p0

    return-object p0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withMemberExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'memberExternalId\' is longer than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    return-object p0
.end method

.method public withTeam(Lcom/dropbox/core/v2/teamlog/TeamLogInfo;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->team:Lcom/dropbox/core/v2/teamlog/TeamLogInfo;

    return-object p0
.end method

.method public withTeamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    return-object p0
.end method
