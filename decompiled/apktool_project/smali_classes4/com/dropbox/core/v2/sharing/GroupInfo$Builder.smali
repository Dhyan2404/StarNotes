.class public Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
.super Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/GroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

.field protected final isMember:Z

.field protected final isOwner:Z

.field protected final sameTeam:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    iput-boolean p5, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->isMember:Z

    iput-boolean p6, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->isOwner:Z

    iput-boolean p7, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->sameTeam:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'groupType\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/GroupInfo;
    .locals 11

    .line 2
    new-instance v10, Lcom/dropbox/core/v2/sharing/GroupInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->isMember:Z

    iget-boolean v6, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->isOwner:Z

    iget-boolean v7, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->sameTeam:Z

    iget-object v8, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupExternalId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->memberCount:Ljava/lang/Long;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZLjava/lang/String;Ljava/lang/Long;)V

    return-object v10
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->build()Lcom/dropbox/core/v2/sharing/GroupInfo;

    move-result-object p0

    return-object p0
.end method

.method public withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;

    return-object p0
.end method

.method public bridge synthetic withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;

    return-object p0
.end method

.method public bridge synthetic withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;

    move-result-object p0

    return-object p0
.end method
