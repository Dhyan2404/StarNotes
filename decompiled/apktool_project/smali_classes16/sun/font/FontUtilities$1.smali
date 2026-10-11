.class final Lsun/font/FontUtilities$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/FontUtilities;
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
    .locals 5

    const-string p0, "os.name"

    const-string v0, "unknownOS"

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Linux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lsun/font/FontUtilities;->isLinux:Z

    const-string v0, "OS X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lsun/font/FontUtilities;->isMacOSX:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sput-boolean v2, Lsun/font/FontUtilities;->isMacOSX14:Z

    const-string v0, "os.version"

    const-string v3, ""

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "10."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sput-boolean v0, Lsun/font/FontUtilities;->isMacOSX14:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const-string v0, "sun.java2d.font.scaler"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "jdk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lsun/font/FontUtilities;->useJDKScaler:Z

    goto :goto_1

    :cond_3
    sput-boolean v1, Lsun/font/FontUtilities;->useJDKScaler:Z

    :goto_1
    const-string v0, "Windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lsun/font/FontUtilities;->isWindows:Z

    const-string p0, "sun.java2d.debugfonts"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v2}, Lsun/font/FontUtilities;->access$002(Z)Z

    const-string v0, "sun.java2d"

    invoke-static {v0}, Lsun/util/logging/NeoPlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->access$102(Lsun/util/logging/NeoPlatformLogger;)Lsun/util/logging/NeoPlatformLogger;

    const-string v0, "warning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lsun/font/FontUtilities;->access$100()Lsun/util/logging/NeoPlatformLogger;

    move-result-object p0

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->WARNING:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {p0, v0}, Lsun/util/logging/NeoPlatformLogger;->setLevel(Lsun/util/logging/NeoPlatformLogger$Level;)V

    goto :goto_2

    :cond_4
    const-string v0, "severe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lsun/font/FontUtilities;->access$100()Lsun/util/logging/NeoPlatformLogger;

    move-result-object p0

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->SEVERE:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {p0, v0}, Lsun/util/logging/NeoPlatformLogger;->setLevel(Lsun/util/logging/NeoPlatformLogger$Level;)V

    :cond_5
    :goto_2
    invoke-static {}, Lsun/font/FontUtilities;->access$100()Lsun/util/logging/NeoPlatformLogger;

    move-result-object p0

    invoke-virtual {p0}, Lsun/util/logging/NeoPlatformLogger;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Lsun/font/FontUtilities;->access$202(Z)Z

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
