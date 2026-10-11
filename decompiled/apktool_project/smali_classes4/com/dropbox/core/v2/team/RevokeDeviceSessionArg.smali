.class public final Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$b;,
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    }
.end annotation


# instance fields
.field public a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

.field public b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

.field public c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

.field public d:Lcom/dropbox/core/v2/team/DeviceSessionArg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object p0
.end method

.method public static desktopClient(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->e(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mobileClient(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->f(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static webSession(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->g(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    if-eqz v2, :cond_c

    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_9

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    if-eq p0, p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    :cond_8
    :goto_1
    return v0

    :cond_9
    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    if-eq p0, p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_a
    move v0, v1

    :cond_b
    :goto_2
    return v0

    :cond_c
    return v1
.end method

.method public final f(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object p0
.end method

.method public getDesktopClientValue()Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DESKTOP_CLIENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMobileClientValue()Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MOBILE_CLIENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWebSessionValue()Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.WEB_SESSION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDesktopClient()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMobileClient()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWebSession()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$b;->b:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$b;->b:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
