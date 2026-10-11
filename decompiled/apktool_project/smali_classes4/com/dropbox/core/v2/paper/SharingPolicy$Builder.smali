.class public Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/SharingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

.field protected teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPolicy;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    iget-object p0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/paper/SharingPolicy;-><init>(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)V

    return-object v0
.end method

.method public withPublicSharingPolicy(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;)Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    return-object p0
.end method

.method public withTeamSharingPolicy(Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    return-object p0
.end method
