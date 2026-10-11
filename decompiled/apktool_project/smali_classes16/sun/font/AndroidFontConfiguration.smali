.class public Lsun/font/AndroidFontConfiguration;
.super Lsun/awt/WFontConfiguration;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lsun/font/SunFontManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsun/awt/WFontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    return-void
.end method

.method public constructor <init>(Lsun/font/SunFontManager;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lsun/awt/WFontConfiguration;-><init>(Lsun/font/SunFontManager;ZZ)V

    return-void
.end method


# virtual methods
.method public findFontConfigFile()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/fontconfig.bfc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->fontConfigFile:Ljava/io/File;

    const/4 p0, 0x0

    sput-boolean p0, Lsun/awt/FontConfiguration;->isProperties:Z

    return-void
.end method

.method public readFontConfigFile(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lsun/awt/FontConfiguration;->javaLib:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun/awt/FontConfiguration;->getInstalledFallbackFonts(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    :try_start_0
    const-class v0, Lsun/font/AndroidFontConfiguration;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-boolean v1, Lsun/awt/FontConfiguration;->isProperties:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lsun/awt/FontConfiguration;->loadProperties(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lsun/awt/FontConfiguration;->loadBinary(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read logical font configuration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read logical font configuration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported fontconfig version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
