.class public Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

.field public final b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;

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
            Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;->build()Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;->a:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->p(Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg;)Lcom/dropbox/core/v2/team/LegalHoldPolicy;

    move-result-object p0

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;->withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;

    return-object p0
.end method

.method public withEndDate(Ljava/util/Date;)Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;->withEndDate(Ljava/util/Date;)Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;

    return-object p0
.end method

.method public withStartDate(Ljava/util/Date;)Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldsCreatePolicyBuilder;->b:Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;->withStartDate(Ljava/util/Date;)Lcom/dropbox/core/v2/team/LegalHoldsPolicyCreateArg$Builder;

    return-object p0
.end method
