.class public final Lcom/dropbox/core/v2/sharing/MountFolderError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MountFolderError$b;,
        Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;
    }
.end annotation


# static fields
.field public static final ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;


# instance fields
.field public a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

.field public b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field public c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->c(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->c(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->c(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->c(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->c(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/MountFolderError;->d(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    return-object p0
.end method

.method public static insufficientQuota(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/MountFolderError;->e(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->equals(Ljava/lang/Object;)Z

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
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInsufficientQuotaValue()Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INSUFFICIENT_QUOTA, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAccessError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAlreadyMounted()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsideSharedFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsufficientQuota()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNoPermission()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotMountable()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$b;->b:Lcom/dropbox/core/v2/sharing/MountFolderError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$b;->b:Lcom/dropbox/core/v2/sharing/MountFolderError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
