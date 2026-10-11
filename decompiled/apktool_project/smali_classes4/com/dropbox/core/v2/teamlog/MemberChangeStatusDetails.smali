.class public Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;,
        Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    }
.end annotation


# instance fields
.field protected final action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

.field protected final newTeam:Ljava/lang/String;

.field protected final newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field protected final previousTeam:Ljava/lang/String;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/ActionDetails;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/ActionDetails;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 4
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    .line 5
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newTeam:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousTeam:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'newValue\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/MemberStatus;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V

    return-object v0
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

    if-eqz v2, :cond_8

    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newTeam:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newTeam:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousTeam:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousTeam:Ljava/lang/String;

    if-eq p0, p1, :cond_7

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :cond_7
    :goto_0
    return v0

    :cond_8
    return v1
.end method

.method public getAction()Lcom/dropbox/core/v2/teamlog/ActionDetails;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    return-object p0
.end method

.method public getNewTeam()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newTeam:Ljava/lang/String;

    return-object p0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/MemberStatus;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object p0
.end method

.method public getPreviousTeam()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousTeam:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/MemberStatus;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newTeam:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousTeam:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
