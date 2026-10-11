.class public Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'previousValue\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'newValue\' is null"

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

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    return-object p0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicy;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
