.class public Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

.field protected newTeam:Ljava/lang/String;

.field protected final newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field protected previousTeam:Ljava/lang/String;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newTeam:Ljava/lang/String;

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousTeam:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'newValue\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
    .locals 7

    new-instance v6, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newTeam:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousTeam:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/ActionDetails;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withAction(Lcom/dropbox/core/v2/teamlog/ActionDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    return-object p0
.end method

.method public withNewTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newTeam:Ljava/lang/String;

    return-object p0
.end method

.method public withPreviousTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousTeam:Ljava/lang/String;

    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/MemberStatus;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object p0
.end method
