.class public final Lcom/dropbox/core/v2/files/LockFileError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/LockFileError$b;,
        Lcom/dropbox/core/v2/files/LockFileError$Tag;
    }
.end annotation


# static fields
.field public static final CANNOT_BE_LOCKED:Lcom/dropbox/core/v2/files/LockFileError;

.field public static final FILE_NOT_SHARED:Lcom/dropbox/core/v2/files/LockFileError;

.field public static final INTERNAL_ERROR:Lcom/dropbox/core/v2/files/LockFileError;

.field public static final NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/LockFileError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/LockFileError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/LockFileError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/LockFileError;


# instance fields
.field public a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public b:Lcom/dropbox/core/v2/files/LookupError;

.field public c:Lcom/dropbox/core/v2/files/LockConflictError;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/LockFileError;->c(Lcom/dropbox/core/v2/files/LockFileError$Tag;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/LockFileError;

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/LockFileError;->c(Lcom/dropbox/core/v2/files/LockFileError$Tag;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/LockFileError;

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/LockFileError;->c(Lcom/dropbox/core/v2/files/LockFileError$Tag;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/LockFileError;

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->CANNOT_BE_LOCKED:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/LockFileError;->c(Lcom/dropbox/core/v2/files/LockFileError$Tag;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError;->CANNOT_BE_LOCKED:Lcom/dropbox/core/v2/files/LockFileError;

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->FILE_NOT_SHARED:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/LockFileError;->c(Lcom/dropbox/core/v2/files/LockFileError$Tag;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError;->FILE_NOT_SHARED:Lcom/dropbox/core/v2/files/LockFileError;

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/LockFileError;->c(Lcom/dropbox/core/v2/files/LockFileError$Tag;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/LockFileError;

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->OTHER:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/LockFileError;->c(Lcom/dropbox/core/v2/files/LockFileError$Tag;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError;->OTHER:Lcom/dropbox/core/v2/files/LockFileError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/files/LockFileError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/files/LockFileError;)Lcom/dropbox/core/v2/files/LockConflictError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->c:Lcom/dropbox/core/v2/files/LockConflictError;

    return-object p0
.end method

.method public static lockConflict(Lcom/dropbox/core/v2/files/LockConflictError;)Lcom/dropbox/core/v2/files/LockFileError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->LOCK_CONFLICT:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/LockFileError;->d(Lcom/dropbox/core/v2/files/LockFileError$Tag;Lcom/dropbox/core/v2/files/LockConflictError;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/LockFileError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/LockFileError;->e(Lcom/dropbox/core/v2/files/LockFileError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/LockFileError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/files/LockFileError$Tag;)Lcom/dropbox/core/v2/files/LockFileError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/files/LockFileError$Tag;Lcom/dropbox/core/v2/files/LockConflictError;)Lcom/dropbox/core/v2/files/LockFileError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/LockFileError;->c:Lcom/dropbox/core/v2/files/LockConflictError;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/files/LockFileError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/LockFileError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/LockFileError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/LockFileError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/LockFileError;->b:Lcom/dropbox/core/v2/files/LookupError;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/LockFileError;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/files/LockFileError;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/LockFileError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->c:Lcom/dropbox/core/v2/files/LockConflictError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/LockFileError;->c:Lcom/dropbox/core/v2/files/LockConflictError;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/LockConflictError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/LockFileError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    return v0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLockConflictValue()Lcom/dropbox/core/v2/files/LockConflictError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->LOCK_CONFLICT:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->c:Lcom/dropbox/core/v2/files/LockConflictError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.LOCK_CONFLICT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPathLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/LockFileError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->c:Lcom/dropbox/core/v2/files/LockConflictError;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isCannotBeLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->CANNOT_BE_LOCKED:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFileNotShared()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->FILE_NOT_SHARED:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInternalError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockConflict()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->LOCK_CONFLICT:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNoWritePermission()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/LockFileError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->OTHER:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPathLookup()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyFiles()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyWriteOperations()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/files/LockFileError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/LockFileError;->a:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$b;->b:Lcom/dropbox/core/v2/files/LockFileError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$b;->b:Lcom/dropbox/core/v2/files/LockFileError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
