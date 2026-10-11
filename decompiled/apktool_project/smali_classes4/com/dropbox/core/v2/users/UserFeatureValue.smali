.class public final Lcom/dropbox/core/v2/users/UserFeatureValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/UserFeatureValue$b;,
        Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/users/UserFeatureValue;


# instance fields
.field public a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

.field public b:Lcom/dropbox/core/v2/users/PaperAsFilesValue;

.field public c:Lcom/dropbox/core/v2/users/FileLockingValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/users/UserFeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/UserFeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/users/UserFeatureValue;->c(Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;)Lcom/dropbox/core/v2/users/UserFeatureValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/users/UserFeatureValue;->OTHER:Lcom/dropbox/core/v2/users/UserFeatureValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/users/UserFeatureValue;)Lcom/dropbox/core/v2/users/PaperAsFilesValue;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->b:Lcom/dropbox/core/v2/users/PaperAsFilesValue;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/users/UserFeatureValue;)Lcom/dropbox/core/v2/users/FileLockingValue;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->c:Lcom/dropbox/core/v2/users/FileLockingValue;

    return-object p0
.end method

.method public static fileLocking(Lcom/dropbox/core/v2/users/FileLockingValue;)Lcom/dropbox/core/v2/users/UserFeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/users/UserFeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/UserFeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;->FILE_LOCKING:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/users/UserFeatureValue;->d(Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;Lcom/dropbox/core/v2/users/FileLockingValue;)Lcom/dropbox/core/v2/users/UserFeatureValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static paperAsFiles(Lcom/dropbox/core/v2/users/PaperAsFilesValue;)Lcom/dropbox/core/v2/users/UserFeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/users/UserFeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/UserFeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;->PAPER_AS_FILES:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/users/UserFeatureValue;->e(Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;Lcom/dropbox/core/v2/users/PaperAsFilesValue;)Lcom/dropbox/core/v2/users/UserFeatureValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;)Lcom/dropbox/core/v2/users/UserFeatureValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/users/UserFeatureValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/users/UserFeatureValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;Lcom/dropbox/core/v2/users/FileLockingValue;)Lcom/dropbox/core/v2/users/UserFeatureValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/users/UserFeatureValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/users/UserFeatureValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->c:Lcom/dropbox/core/v2/users/FileLockingValue;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;Lcom/dropbox/core/v2/users/PaperAsFilesValue;)Lcom/dropbox/core/v2/users/UserFeatureValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/users/UserFeatureValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/users/UserFeatureValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->b:Lcom/dropbox/core/v2/users/PaperAsFilesValue;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/users/UserFeatureValue;

    if-eqz v2, :cond_a

    check-cast p1, Lcom/dropbox/core/v2/users/UserFeatureValue;

    iget-object v2, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/users/UserFeatureValue$a;->a:[I

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
    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->c:Lcom/dropbox/core/v2/users/FileLockingValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/users/UserFeatureValue;->c:Lcom/dropbox/core/v2/users/FileLockingValue;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/users/FileLockingValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->b:Lcom/dropbox/core/v2/users/PaperAsFilesValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/users/UserFeatureValue;->b:Lcom/dropbox/core/v2/users/PaperAsFilesValue;

    if-eq p0, p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/users/PaperAsFilesValue;->equals(Ljava/lang/Object;)Z

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

.method public getFileLockingValue()Lcom/dropbox/core/v2/users/FileLockingValue;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;->FILE_LOCKING:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->c:Lcom/dropbox/core/v2/users/FileLockingValue;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FILE_LOCKING, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaperAsFilesValue()Lcom/dropbox/core/v2/users/PaperAsFilesValue;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;->PAPER_AS_FILES:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->b:Lcom/dropbox/core/v2/users/PaperAsFilesValue;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PAPER_AS_FILES, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->b:Lcom/dropbox/core/v2/users/PaperAsFilesValue;

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->c:Lcom/dropbox/core/v2/users/FileLockingValue;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isFileLocking()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;->FILE_LOCKING:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaperAsFiles()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;->PAPER_AS_FILES:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/users/UserFeatureValue;->a:Lcom/dropbox/core/v2/users/UserFeatureValue$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/users/UserFeatureValue$b;->b:Lcom/dropbox/core/v2/users/UserFeatureValue$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/users/UserFeatureValue$b;->b:Lcom/dropbox/core/v2/users/UserFeatureValue$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
