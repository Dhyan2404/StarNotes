.class public Lcom/dropbox/core/v2/team/UserCustomQuotaArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/UserCustomQuotaArg$a;
    }
.end annotation


# instance fields
.field protected final quotaGb:J

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const-wide/16 v0, 0xf

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    iput-wide p2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->quotaGb:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'quotaGb\' is smaller than 15L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'user\' is null"

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

    if-eqz v2, :cond_4

    check-cast p1, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->quotaGb:J

    iget-wide p0, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->quotaGb:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public getQuotaGb()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->quotaGb:J

    return-wide v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-wide v1, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg;->quotaGb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg$a;->b:Lcom/dropbox/core/v2/team/UserCustomQuotaArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/UserCustomQuotaArg$a;->b:Lcom/dropbox/core/v2/team/UserCustomQuotaArg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
