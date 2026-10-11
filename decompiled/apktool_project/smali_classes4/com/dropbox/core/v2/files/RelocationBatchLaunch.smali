.class public final Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;,
        Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch;


# instance fields
.field public a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

.field public b:Ljava/lang/String;

.field public c:Lcom/dropbox/core/v2/files/RelocationBatchResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->c(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->d(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->c:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->e(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->c:Lcom/dropbox/core/v2/files/RelocationBatchResult;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    if-eqz v2, :cond_a

    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->a:[I

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
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->c:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->c:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchResult;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->b:Ljava/lang/String;

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
    return v1
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->c:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->c:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public isAsyncJobId()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComplete()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;->b:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
