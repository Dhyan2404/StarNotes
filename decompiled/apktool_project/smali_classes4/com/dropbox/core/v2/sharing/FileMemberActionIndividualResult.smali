.class public final Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$b;,
        Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;
    }
.end annotation


# instance fields
.field public a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

.field public b:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object p0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->d(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->e(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    if-eqz v2, :cond_9

    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    if-eq p0, p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq p0, p1, :cond_8

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    :cond_8
    :goto_1
    return v0

    :cond_9
    return v1
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isMemberError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$b;->b:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$b;->b:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
