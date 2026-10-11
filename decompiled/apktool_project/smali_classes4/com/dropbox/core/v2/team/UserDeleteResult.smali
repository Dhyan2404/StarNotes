.class public final Lcom/dropbox/core/v2/team/UserDeleteResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/UserDeleteResult$b;,
        Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/UserDeleteResult;


# instance fields
.field public a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

.field public b:Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;

.field public c:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/UserDeleteResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserDeleteResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/UserDeleteResult;->c(Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;)Lcom/dropbox/core/v2/team/UserDeleteResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/UserDeleteResult;->OTHER:Lcom/dropbox/core/v2/team/UserDeleteResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/UserDeleteResult;)Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->b:Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/team/UserDeleteResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object p0
.end method

.method public static invalidUser(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/UserDeleteResult;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/UserDeleteResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserDeleteResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/UserDeleteResult;->d(Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/UserDeleteResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;)Lcom/dropbox/core/v2/team/UserDeleteResult;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/UserDeleteResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserDeleteResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/UserDeleteResult;->e(Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;)Lcom/dropbox/core/v2/team/UserDeleteResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;)Lcom/dropbox/core/v2/team/UserDeleteResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/UserDeleteResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/UserDeleteResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/UserDeleteResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/UserDeleteResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/UserDeleteResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;)Lcom/dropbox/core/v2/team/UserDeleteResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/UserDeleteResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/UserDeleteResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->b:Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/UserDeleteResult;

    if-eqz v2, :cond_a

    check-cast p1, Lcom/dropbox/core/v2/team/UserDeleteResult;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/UserDeleteResult$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/UserDeleteResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->b:Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/UserDeleteResult;->b:Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;

    if-eq p0, p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    move v0, v1

    :cond_9
    :goto_1
    return v0

    :cond_a
    return v1
.end method

.method public getInvalidUserValue()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->b:Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->b:Lcom/dropbox/core/v2/team/UserDeleteEmailsResult;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isInvalidUser()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserDeleteResult;->a:Lcom/dropbox/core/v2/team/UserDeleteResult$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/UserDeleteResult$b;->b:Lcom/dropbox/core/v2/team/UserDeleteResult$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/UserDeleteResult$b;->b:Lcom/dropbox/core/v2/team/UserDeleteResult$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
