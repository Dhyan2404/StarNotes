.class public final Lcom/dropbox/core/v2/files/WriteError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/WriteError$b;,
        Lcom/dropbox/core/v2/files/WriteError$Tag;
    }
.end annotation


# static fields
.field public static final DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

.field public static final INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

.field public static final NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/WriteError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError;


# instance fields
.field public a:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field public b:Ljava/lang/String;

.field public c:Lcom/dropbox/core/v2/files/WriteConflictError;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->c(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->c(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->c(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->c(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError;

    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->c(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError;

    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->c(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->OTHER:Lcom/dropbox/core/v2/files/WriteError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/files/WriteError;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/WriteConflictError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object p0
.end method

.method public static conflict(Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteError;->d(Lcom/dropbox/core/v2/files/WriteError$Tag;Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static malformedPath()Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    return-object v0
.end method

.method public static malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 2

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteError;->e(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/files/WriteError$Tag;Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/WriteError;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/files/WriteError;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/WriteError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

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
    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    if-eq p0, p1, :cond_6

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getConflictValue()Lcom/dropbox/core/v2/files/WriteConflictError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CONFLICT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMalformedPathValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MALFORMED_PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isConflict()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisallowedName()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsufficientSpace()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMalformedPath()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/files/WriteError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$b;->b:Lcom/dropbox/core/v2/files/WriteError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$b;->b:Lcom/dropbox/core/v2/files/WriteError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
