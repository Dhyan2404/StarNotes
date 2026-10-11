.class public Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;
    }
.end annotation


# instance fields
.field protected final action:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;

.field protected final additionalInfo:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;

.field protected final newValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->additionalInfo:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'newValue\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'previousValue\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'additionalInfo\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'action\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->additionalInfo:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->additionalInfo:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getAction()Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;

    return-object p0
.end method

.method public getAdditionalInfo()Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->additionalInfo:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;

    return-object p0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    return-object p0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->additionalInfo:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
