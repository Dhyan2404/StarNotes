.class public final Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$b;,
        Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;
    }
.end annotation


# instance fields
.field public a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

.field public b:Ljava/lang/String;

.field public c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->d(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

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

.method public static synthetic b(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->e(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    if-eqz v2, :cond_9

    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    if-eq p0, p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

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

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$b;->b:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$b;->b:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
