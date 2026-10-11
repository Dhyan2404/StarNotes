.class public Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected teamName:Ljava/lang/String;

.field protected trustedTeamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;->teamName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;->trustedTeamName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;->teamName:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;->trustedTeamName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withTeamName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;->teamName:Ljava/lang/String;

    return-object p0
.end method

.method public withTrustedTeamName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$Builder;->trustedTeamName:Ljava/lang/String;

    return-object p0
.end method
