.class public final Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AddFolderMemberError$b;,
        Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;
    }
.end annotation


# static fields
.field public static final BANNED_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final INVALID_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;


# instance fields
.field public a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field public c:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BANNED_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->BANNED_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->INVALID_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->INVALID_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->f(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-object p0
.end method

.method public static badMember(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->g(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public static tooManyMembers(J)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->h(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object p0

    return-object p0
.end method

.method public static tooManyPendingInvites(J)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->i(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    if-eqz v2, :cond_9

    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e:Ljava/lang/Long;

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :pswitch_2
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->d:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->d:Ljava/lang/Long;

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    :pswitch_3
    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :cond_6
    :goto_2
    :pswitch_5
    return v0

    :pswitch_6
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    :cond_8
    :goto_3
    return v0

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
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

.method public final f(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-object p0
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBadMemberValue()Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.BAD_MEMBER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTooManyMembersValue()J
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->d:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TOO_MANY_MEMBERS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTooManyPendingInvitesValue()J
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TOO_MANY_PENDING_INVITES, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->d:Ljava/lang/Long;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e:Ljava/lang/Long;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public isAccessError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBadMember()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBannedMember()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BANNED_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCantShareOutsideTeam()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmailUnverified()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsufficientPlan()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInvalidSharedFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->INVALID_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRateLimit()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyInvitees()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyMembers()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyPendingInvites()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$b;->b:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$b;->b:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
