.class public Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

.field public final b:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;->b:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/team/ListMembersDevicesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;->b:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;->build()Lcom/dropbox/core/v2/team/ListMembersDevicesArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->b(Lcom/dropbox/core/v2/team/ListMembersDevicesArg;)Lcom/dropbox/core/v2/team/ListMembersDevicesResult;

    move-result-object p0

    return-object p0
.end method

.method public withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;->b:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;->withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    return-object p0
.end method

.method public withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;->b:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;->withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    return-object p0
.end method

.method public withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;->b:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;->withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    return-object p0
.end method

.method public withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;->b:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;->withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    return-object p0
.end method
