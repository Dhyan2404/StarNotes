.class public Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupCreateArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected addCreatorAsOwner:Z

.field protected groupExternalId:Ljava/lang/String;

.field protected groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->addCreatorAsOwner:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'groupName\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/GroupCreateArg;
    .locals 4

    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->addCreatorAsOwner:Z

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/v2/team/GroupCreateArg;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    return-object v0
.end method

.method public withAddCreatorAsOwner(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->addCreatorAsOwner:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->addCreatorAsOwner:Z

    :goto_0
    return-object p0
.end method

.method public withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    return-object p0
.end method

.method public withGroupManagementType(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object p0
.end method
