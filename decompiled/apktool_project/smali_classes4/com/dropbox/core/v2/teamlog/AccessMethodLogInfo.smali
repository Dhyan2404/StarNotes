.class public final Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$b;,
        Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;


# instance fields
.field public a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field public b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

.field public c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field public d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field public e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field public f:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field public g:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->g(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object p0
.end method

.method public static adminConsole(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->h(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static api(Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->i(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public static contentManager(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->j(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public static synthetic e(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public static endUser(Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->k(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enterpriseConsole(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ENTERPRISE_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->l(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic f(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->g:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    return-object p0
.end method

.method public static signInAs(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->m(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
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
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    if-eqz v2, :cond_f

    check-cast p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->g:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->g:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :pswitch_2
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq p0, p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :cond_a
    :goto_3
    return v0

    :pswitch_5
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq p0, p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    move v0, v1

    :cond_c
    :goto_4
    return v0

    :pswitch_6
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    if-eq p0, p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    move v0, v1

    :cond_e
    :goto_5
    return v0

    :cond_f
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    return-object p0
.end method

.method public getAdminConsoleValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ADMIN_CONSOLE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApiValue()Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->g:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.API, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentManagerValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CONTENT_MANAGER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEndUserValue()Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.END_USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnterpriseConsoleValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ENTERPRISE_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ENTERPRISE_CONSOLE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignInAsValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SIGN_IN_AS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->g:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->g:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    return-object p0
.end method

.method public isAdminConsole()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isApi()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentManager()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEndUser()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnterpriseConsole()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ENTERPRISE_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSignInAs()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public final k(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object p0
.end method

.method public final l(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public final m(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$b;->b:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$b;->b:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
