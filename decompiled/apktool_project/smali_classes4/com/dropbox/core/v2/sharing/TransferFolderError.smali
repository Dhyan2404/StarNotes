.class public final Lcom/dropbox/core/v2/sharing/TransferFolderError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/TransferFolderError$b;,
        Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError;


# instance fields
.field public a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/sharing/TransferFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->c(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/TransferFolderError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAccessError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInvalidDropboxId()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewOwnerEmailUnverified()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewOwnerNotAMember()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewOwnerUnmounted()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTeamFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$b;->b:Lcom/dropbox/core/v2/sharing/TransferFolderError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$b;->b:Lcom/dropbox/core/v2/sharing/TransferFolderError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
