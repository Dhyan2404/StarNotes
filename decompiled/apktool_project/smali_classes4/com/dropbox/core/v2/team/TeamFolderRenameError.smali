.class public final Lcom/dropbox/core/v2/team/TeamFolderRenameError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderRenameError$b;,
        Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
    }
.end annotation


# static fields
.field public static final FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;


# instance fields
.field public a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field public b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

.field public c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

.field public d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->e(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object p0
.end method

.method public static statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->f(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->g(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    if-eqz v2, :cond_9

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

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

    :pswitch_2
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

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

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    return v0

    :cond_9
    return v1

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

.method public final f(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object p0
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatusErrorValue()Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.STATUS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTeamSharedDropboxErrorValue()Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public isAccessError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFolderNameAlreadyUsed()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFolderNameReserved()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInvalidFolderName()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStatusError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTeamSharedDropboxError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$b;->b:Lcom/dropbox/core/v2/team/TeamFolderRenameError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$b;->b:Lcom/dropbox/core/v2/team/TeamFolderRenameError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
