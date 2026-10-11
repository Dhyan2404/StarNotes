.class public final Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$b;,
        Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;


# instance fields
.field public a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->b(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->OTHER:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static hasTeamSelectiveSync(Z)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->c(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->b:Ljava/lang/Boolean;

    return-object p0
.end method

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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    if-eqz v2, :cond_6

    check-cast p1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_4

    const/4 p0, 0x2

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->b:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->b:Ljava/lang/Boolean;

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getHasTeamSelectiveSyncValue()Z
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.HAS_TEAM_SELECTIVE_SYNC, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->b:Ljava/lang/Boolean;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isHasTeamSelectiveSync()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOther()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$b;->b:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$b;->b:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
