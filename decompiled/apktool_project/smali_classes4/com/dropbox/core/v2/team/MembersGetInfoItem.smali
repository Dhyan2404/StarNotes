.class public final Lcom/dropbox/core/v2/team/MembersGetInfoItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersGetInfoItem$b;,
        Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;
    }
.end annotation


# instance fields
.field public a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

.field public b:Ljava/lang/String;

.field public c:Lcom/dropbox/core/v2/team/TeamMemberInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/MembersGetInfoItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/team/MembersGetInfoItem;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object p0
.end method

.method public static idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->d(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static memberInfo(Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->e(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    if-eqz v2, :cond_9

    check-cast p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    if-eq p0, p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getIdNotFoundValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ID_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMemberInfoValue()Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_INFO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isIdNotFound()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMemberInfo()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem$b;->b:Lcom/dropbox/core/v2/team/MembersGetInfoItem$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem$b;->b:Lcom/dropbox/core/v2/team/MembersGetInfoItem$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
