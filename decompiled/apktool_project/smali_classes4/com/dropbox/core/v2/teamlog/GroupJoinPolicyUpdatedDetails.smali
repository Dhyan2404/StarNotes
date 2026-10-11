.class public Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;,
        Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$Builder;
    }
.end annotation


# instance fields
.field protected final isCompanyManaged:Ljava/lang/Boolean;

.field protected final joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;-><init>(Ljava/lang/Boolean;Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->isCompanyManaged:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$Builder;-><init>()V

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

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->isCompanyManaged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->isCompanyManaged:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    if-eq p0, p1, :cond_4

    if-eqz p0, :cond_3

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

.method public getIsCompanyManaged()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->isCompanyManaged:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getJoinPolicy()Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->isCompanyManaged:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
