.class public final Lcom/dropbox/core/v2/sharing/JobStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/JobStatus$b;,
        Lcom/dropbox/core/v2/sharing/JobStatus$Tag;
    }
.end annotation


# static fields
.field public static final COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus;

.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus;


# instance fields
.field public a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

.field public b:Lcom/dropbox/core/v2/sharing/JobError;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/JobStatus;->b(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus;

    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/JobStatus;->b(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobStatus;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/sharing/JobStatus;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->b:Lcom/dropbox/core/v2/sharing/JobError;

    return-object p0
.end method

.method public static failed(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobStatus;->c(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->b:Lcom/dropbox/core/v2/sharing/JobError;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/JobStatus;

    if-eqz v2, :cond_6

    check-cast p1, Lcom/dropbox/core/v2/sharing/JobStatus;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/JobStatus$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->b:Lcom/dropbox/core/v2/sharing/JobError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/JobStatus;->b:Lcom/dropbox/core/v2/sharing/JobError;

    if-eq p0, p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/JobError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/sharing/JobError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->b:Lcom/dropbox/core/v2/sharing/JobError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->b:Lcom/dropbox/core/v2/sharing/JobError;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public isComplete()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFailed()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInProgress()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/JobStatus$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->a:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$b;->b:Lcom/dropbox/core/v2/sharing/JobStatus$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$b;->b:Lcom/dropbox/core/v2/sharing/JobStatus$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
