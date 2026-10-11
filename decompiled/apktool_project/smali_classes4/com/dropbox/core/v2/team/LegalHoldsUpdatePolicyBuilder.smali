.class public Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

.field public final b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/team/LegalHoldPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;->build()Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->v(Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg;)Lcom/dropbox/core/v2/team/LegalHoldPolicy;

    move-result-object p0

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;->withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;

    return-object p0
.end method

.method public withMembers(Ljava/util/List;)Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;->withMembers(Ljava/util/List;)Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldsUpdatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;->withName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/LegalHoldsPolicyUpdateArg$Builder;

    return-object p0
.end method
