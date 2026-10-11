.class public Lcom/dropbox/core/v2/DbxTeamClientV2Base;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _client:Lcom/dropbox/core/v2/DbxRawClientV2;

.field public final a:Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;

.field public final b:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

.field public final c:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->a:Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;

    new-instance v0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->b:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->c:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;

    return-void
.end method


# virtual methods
.method public fileProperties()Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->a:Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;

    return-object p0
.end method

.method public team()Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->b:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    return-object p0
.end method

.method public teamLog()Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->c:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;

    return-object p0
.end method
