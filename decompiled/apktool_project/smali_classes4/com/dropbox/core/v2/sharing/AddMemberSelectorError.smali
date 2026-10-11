.class public final Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$b;,
        Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    }
.end annotation


# static fields
.field public static final AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;


# instance fields
.field public a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static invalidDropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->e(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

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

.method public static invalidEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->f(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unverifiedDropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->g(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

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


# virtual methods
.method public final d(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    if-eqz v2, :cond_9

    check-cast p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :pswitch_2
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    :pswitch_4
    return v0

    :cond_9
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getInvalidDropboxIdValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInvalidEmailValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnverifiedDropboxIdValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UNVERIFIED_DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAutomaticGroup()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGroupDeleted()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGroupNotOnTeam()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInvalidEmail()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnverifiedDropboxId()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$b;->b:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$b;->b:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
