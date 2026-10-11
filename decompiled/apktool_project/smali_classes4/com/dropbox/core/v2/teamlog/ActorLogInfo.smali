.class public final Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/ActorLogInfo$b;,
        Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

.field public static final DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;


# instance fields
.field public a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field public b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

.field public c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

.field public d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

.field public e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0
.end method

.method public static admin(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->f(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static app(Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->g(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    return-object p0
.end method

.method public static reseller(Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->h(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->i(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    if-eqz v2, :cond_b

    check-cast p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :pswitch_2
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq p0, p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :cond_a
    :goto_3
    return v0

    :cond_b
    return v1

    nop

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

.method public final f(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object p0
.end method

.method public getAdminValue()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ADMIN, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppValue()Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.APP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResellerValue()Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.RESELLER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserValue()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0
.end method

.method public isAdmin()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isApp()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDropbox()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReseller()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUser()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$b;->b:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$b;->b:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
