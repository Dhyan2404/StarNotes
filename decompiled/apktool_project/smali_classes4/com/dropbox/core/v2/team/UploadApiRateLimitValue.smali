.class public final Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$b;,
        Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

.field public static final UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;


# instance fields
.field public a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

.field public b:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->b(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->b(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public static limit(J)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->c(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;Ljava/lang/Long;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;Ljava/lang/Long;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->b:Ljava/lang/Long;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->b:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->b:Ljava/lang/Long;

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getLimitValue()J
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->b:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->b:Ljava/lang/Long;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isLimit()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlimited()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$b;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$b;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
