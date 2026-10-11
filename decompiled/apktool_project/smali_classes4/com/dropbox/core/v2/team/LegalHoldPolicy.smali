.class public Lcom/dropbox/core/v2/team/LegalHoldPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/LegalHoldPolicy$a;,
        Lcom/dropbox/core/v2/team/LegalHoldPolicy$Builder;
    }
.end annotation


# instance fields
.field protected final activationTime:Ljava/util/Date;

.field protected final description:Ljava/lang/String;

.field protected final endDate:Ljava/util/Date;

.field protected final id:Ljava/lang/String;

.field protected final members:Lcom/dropbox/core/v2/team/MembersInfo;

.field protected final name:Ljava/lang/String;

.field protected final startDate:Ljava/util/Date;

.field protected final status:Lcom/dropbox/core/v2/team/LegalHoldStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MembersInfo;Lcom/dropbox/core/v2/team/LegalHoldStatus;Ljava/util/Date;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/team/LegalHoldPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MembersInfo;Lcom/dropbox/core/v2/team/LegalHoldStatus;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MembersInfo;Lcom/dropbox/core/v2/team/LegalHoldStatus;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    const-string v0, "^pid_dbhid:.+"

    .line 2
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    iput-object p1, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->id:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8c

    if-gt p1, v0, :cond_5

    .line 5
    iput-object p2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->name:Ljava/lang/String;

    if-eqz p6, :cond_1

    .line 6
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x1f5

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'description\' is longer than 501"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    iput-object p6, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->description:Ljava/lang/String;

    .line 9
    invoke-static {p7}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->activationTime:Ljava/util/Date;

    if-eqz p3, :cond_4

    .line 10
    iput-object p3, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->members:Lcom/dropbox/core/v2/team/MembersInfo;

    if-eqz p4, :cond_3

    .line 11
    iput-object p4, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->status:Lcom/dropbox/core/v2/team/LegalHoldStatus;

    if-eqz p5, :cond_2

    .line 12
    invoke-static {p5}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->startDate:Ljava/util/Date;

    .line 13
    invoke-static {p8}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->endDate:Ljava/util/Date;

    return-void

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'startDate\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'status\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'members\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'name\' is longer than 140"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'name\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'id\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'id\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MembersInfo;Lcom/dropbox/core/v2/team/LegalHoldStatus;Ljava/util/Date;)Lcom/dropbox/core/v2/team/LegalHoldPolicy$Builder;
    .locals 7

    new-instance v6, Lcom/dropbox/core/v2/team/LegalHoldPolicy$Builder;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/LegalHoldPolicy$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MembersInfo;Lcom/dropbox/core/v2/team/LegalHoldStatus;Ljava/util/Date;)V

    return-object v6
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

    if-eqz v2, :cond_b

    check-cast p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->members:Lcom/dropbox/core/v2/team/MembersInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->members:Lcom/dropbox/core/v2/team/MembersInfo;

    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/MembersInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->status:Lcom/dropbox/core/v2/team/LegalHoldStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->status:Lcom/dropbox/core/v2/team/LegalHoldStatus;

    if-eq v2, v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->startDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->startDate:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->description:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->activationTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->activationTime:Ljava/util/Date;

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->endDate:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->endDate:Ljava/util/Date;

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v1

    :cond_a
    :goto_0
    return v0

    :cond_b
    return v1
.end method

.method public getActivationTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->activationTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->endDate:Ljava/util/Date;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getMembers()Lcom/dropbox/core/v2/team/MembersInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->members:Lcom/dropbox/core/v2/team/MembersInfo;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->startDate:Ljava/util/Date;

    return-object p0
.end method

.method public getStatus()Lcom/dropbox/core/v2/team/LegalHoldStatus;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->status:Lcom/dropbox/core/v2/team/LegalHoldStatus;

    return-object p0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->activationTime:Ljava/util/Date;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->members:Lcom/dropbox/core/v2/team/MembersInfo;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->status:Lcom/dropbox/core/v2/team/LegalHoldStatus;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->startDate:Ljava/util/Date;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/LegalHoldPolicy;->endDate:Ljava/util/Date;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/LegalHoldPolicy$a;->b:Lcom/dropbox/core/v2/team/LegalHoldPolicy$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/LegalHoldPolicy$a;->b:Lcom/dropbox/core/v2/team/LegalHoldPolicy$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
