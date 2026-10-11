.class public final Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$b;,
        Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;


# instance fields
.field public a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->d(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->OTHER:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static notPending(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->NOT_PENDING:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->e(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rateLimited(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->RATE_LIMITED:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->f(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->g(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->c:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    if-eqz v2, :cond_d

    check-cast p1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 p0, 0x4

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->d:Ljava/lang/String;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->c:Ljava/lang/String;

    if-eq p0, p1, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    move v0, v1

    :cond_9
    :goto_1
    return v0

    :cond_a
    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->b:Ljava/lang/String;

    if-eq p0, p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_2

    :cond_b
    move v0, v1

    :cond_c
    :goto_2
    return v0

    :cond_d
    return v1
.end method

.method public final f(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getNotPendingValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->NOT_PENDING:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NOT_PENDING, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRateLimitedValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->RATE_LIMITED:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.RATE_LIMITED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isNotPending()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->NOT_PENDING:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRateLimited()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->RATE_LIMITED:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$b;->b:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$b;->b:Lcom/dropbox/core/v2/team/ResendSecondaryEmailResult$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
