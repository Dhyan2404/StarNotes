.class final Lsun/font/StrikeCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/StrikeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    const-string p0, "sun.java2d.font.reftype"

    const-string v0, "soft"

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "weak"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lsun/font/StrikeCache;->cacheRefTypeWeak:Z

    const-string p0, "sun.java2d.font.minstrikes"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lsun/font/StrikeCache;->MINSTRIKES:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    sput p0, Lsun/font/StrikeCache;->MINSTRIKES:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget p0, Lsun/font/StrikeCache;->MINSTRIKES:I

    new-array p0, p0, [Lsun/font/FontStrike;

    sput-object p0, Lsun/font/StrikeCache;->recentStrikes:[Lsun/font/FontStrike;

    const/4 p0, 0x0

    return-object p0
.end method
