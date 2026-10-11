.class public final Lcom/twelvemonkeys/lang/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/lang/Platform$OperatingSystem;,
        Lcom/twelvemonkeys/lang/Platform$Architecture;
    }
.end annotation


# static fields
.field public static final d:Lcom/twelvemonkeys/lang/Platform;


# instance fields
.field public final a:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/twelvemonkeys/lang/Platform$Architecture;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twelvemonkeys/lang/Platform;

    invoke-direct {v0}, Lcom/twelvemonkeys/lang/Platform;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/lang/Platform;->d:Lcom/twelvemonkeys/lang/Platform;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/lang/Platform;-><init>(Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "os.name"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/lang/Platform;->b(Ljava/lang/String;)Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/lang/Platform;->a:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    const-string v1, "os.version"

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twelvemonkeys/lang/Platform;->b:Ljava/lang/String;

    const-string v1, "os.arch"

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/twelvemonkeys/lang/Platform;->a(Lcom/twelvemonkeys/lang/Platform$OperatingSystem;Ljava/lang/String;)Lcom/twelvemonkeys/lang/Platform$Architecture;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/lang/Platform;->c:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-void
.end method

.method public static a(Lcom/twelvemonkeys/lang/Platform$OperatingSystem;Ljava/lang/String;)Lcom/twelvemonkeys/lang/Platform$Architecture;
    .locals 5

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Windows:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    const-string v1, "i386"

    const-string v2, "x86"

    if-ne p0, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->X86:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_1
    sget-object v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Linux:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    const-string v3, "ppc"

    const-string v4, "power"

    if-ne p0, v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "i686"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->I686:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_4
    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->PPC:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->I386:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_6
    sget-object v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->MacOS:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    if-ne p0, v0, :cond_a

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->X86:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->X86:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_9
    :goto_1
    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->PPC:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_a
    sget-object v0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Solaris:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    if-ne p0, v0, :cond_c

    const-string p0, "sparc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->SPARC:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_b
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->X86:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_c
    sget-object p0, Lcom/twelvemonkeys/lang/Platform$Architecture;->Unknown:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "System property \"os.arch\" == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static arch()Lcom/twelvemonkeys/lang/Platform$Architecture;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/lang/Platform;->d:Lcom/twelvemonkeys/lang/Platform;

    iget-object v0, v0, Lcom/twelvemonkeys/lang/Platform;->c:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/twelvemonkeys/lang/Platform$OperatingSystem;
    .locals 1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Windows:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object p0

    :cond_0
    const-string v0, "linux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Linux:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object p0

    :cond_1
    const-string v0, "mac os"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "darwin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "solaris"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "sunos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Unknown:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->Solaris:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lcom/twelvemonkeys/lang/Platform$OperatingSystem;->MacOS:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "System property \"os.name\" == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get()Lcom/twelvemonkeys/lang/Platform;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/lang/Platform;->d:Lcom/twelvemonkeys/lang/Platform;

    return-object v0
.end method

.method public static os()Lcom/twelvemonkeys/lang/Platform$OperatingSystem;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/lang/Platform;->d:Lcom/twelvemonkeys/lang/Platform;

    iget-object v0, v0, Lcom/twelvemonkeys/lang/Platform;->a:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object v0
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/lang/Platform;->d:Lcom/twelvemonkeys/lang/Platform;

    iget-object v0, v0, Lcom/twelvemonkeys/lang/Platform;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getArchitecture()Lcom/twelvemonkeys/lang/Platform$Architecture;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/lang/Platform;->c:Lcom/twelvemonkeys/lang/Platform$Architecture;

    return-object p0
.end method

.method public getOS()Lcom/twelvemonkeys/lang/Platform$OperatingSystem;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/lang/Platform;->a:Lcom/twelvemonkeys/lang/Platform$OperatingSystem;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/lang/Platform;->b:Ljava/lang/String;

    return-object p0
.end method
