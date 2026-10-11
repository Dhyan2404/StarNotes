.class public Lsun/font/FcFontConfiguration;
.super Lsun/awt/FontConfiguration;
.source "SourceFile"


# static fields
.field private static final fileVersion:Ljava/lang/String; = "1"


# instance fields
.field private fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;

.field private fcInfoFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsun/font/SunFontManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsun/awt/FontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lsun/font/FcFontConfiguration;->fcInfoFileName:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lsun/font/FcFontConfiguration;->fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;

    .line 4
    invoke-virtual {p0}, Lsun/font/FcFontConfiguration;->init()Z

    return-void
.end method

.method public constructor <init>(Lsun/font/SunFontManager;ZZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lsun/awt/FontConfiguration;-><init>(Lsun/font/SunFontManager;ZZ)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lsun/font/FcFontConfiguration;->fcInfoFileName:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lsun/font/FcFontConfiguration;->fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;

    .line 8
    invoke-virtual {p0}, Lsun/font/FcFontConfiguration;->init()Z

    return-void
.end method

.method private getFcFontList([Lsun/font/FontConfigManager$FcCompFont;Ljava/lang/String;I)[Lsun/font/FontConfigManager$FontConfigFont;
    .locals 3

    const-string p0, "dialog"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p2, "sansserif"

    goto :goto_0

    :cond_0
    const-string p0, "dialoginput"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p2, "monospaced"

    :cond_1
    :goto_0
    const/4 p0, 0x0

    move v0, p0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    iget-object v1, v1, Lsun/font/FontConfigManager$FcCompFont;->jdkName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    iget v2, v1, Lsun/font/FontConfigManager$FcCompFont;->style:I

    if-ne p3, v2, :cond_2

    iget-object p0, v1, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object p0, p1, p0

    iget-object p0, p0, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    return-object p0
.end method

.method private getFcInfoFile()Ljava/io/File;
    .locals 7

    iget-object v0, p0, Lsun/font/FcFontConfiguration;->fcInfoFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "localhost"

    :goto_0
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".java"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fonts"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fcinfo-1-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".properties"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FcFontConfiguration;->fcInfoFileName:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lsun/font/FcFontConfiguration;->fcInfoFileName:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getVersionString(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance p0, Ljava/util/Scanner;

    invoke-direct {p0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "(\\d)+((\\.)(\\d)+)*"

    invoke-virtual {p0, p1}, Ljava/util/Scanner;->findInLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/util/Scanner;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private readFcInfo()V
    .locals 16

    const-string v0, "."

    invoke-direct/range {p0 .. p0}, Lsun/font/FcFontConfiguration;->getFcInfoFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fontconfig info file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v3, "version"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    if-eqz v3, :cond_13

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string v3, "fcversion"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lsun/font/FontConfigManager;->getFontConfigVersion()I

    move-result v5

    if-eq v4, v5, :cond_5

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "new, different fontconfig detected"

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    return-void

    :catch_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception parsing version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cachedir."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_8

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "out of date cache directories detected"

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    const-string v3, "sansserif"

    const-string v4, "monospaced"

    const-string v6, "serif"

    filled-new-array {v3, v6, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "sans"

    const-string v8, "monospace"

    filled-new-array {v4, v6, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xc

    new-array v6, v6, [Lsun/font/FontConfigManager$FcCompFont;

    move v8, v5

    :goto_2
    const/4 v9, 0x3

    if-ge v8, v9, :cond_10

    move v9, v5

    :goto_3
    if-ge v9, v7, :cond_f

    mul-int/lit8 v10, v8, 0x4

    add-int/2addr v10, v9

    :try_start_4
    new-instance v11, Lsun/font/FontConfigManager$FcCompFont;

    invoke-direct {v11}, Lsun/font/FontConfigManager$FcCompFont;-><init>()V

    aput-object v11, v6, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v3, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v6, v10

    aget-object v13, v3, v8

    iput-object v13, v12, Lsun/font/FontConfigManager$FcCompFont;->jdkName:Ljava/lang/String;

    aget-object v13, v4, v8

    iput-object v13, v12, Lsun/font/FontConfigManager$FcCompFont;->fcFamily:Ljava/lang/String;

    iput v9, v12, Lsun/font/FontConfigManager$FcCompFont;->style:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".length"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-gtz v12, :cond_b

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad non-positive .length entry in fontconfig file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    aget-object v13, v6, v10

    new-array v14, v12, [Lsun/font/FontConfigManager$FontConfigFont;

    iput-object v14, v13, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    move v13, v5

    :goto_4
    if-ge v13, v12, :cond_e

    aget-object v14, v6, v10

    iget-object v14, v14, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    new-instance v15, Lsun/font/FontConfigManager$FontConfigFont;

    invoke-direct {v15}, Lsun/font/FontConfigManager$FontConfigFont;-><init>()V

    aput-object v15, v14, v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ".fullName"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aget-object v15, v6, v10

    iget-object v15, v15, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    aget-object v15, v15, v13

    iput-object v14, v15, Lsun/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ".file"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_d

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing file value for key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in fontconfig file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    aget-object v14, v6, v10

    iget-object v14, v14, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    aget-object v14, v14, v13

    iput-object v15, v14, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_e
    aget-object v10, v6, v10

    iget-object v11, v10, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    aget-object v11, v11, v5

    iput-object v11, v10, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_10
    move-object/from16 v8, p0

    iput-object v6, v8, Lsun/font/FcFontConfiguration;->fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_11
    :goto_5
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "successfully parsed the fontconfig file at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_12
    return-void

    :cond_13
    :goto_6
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fontconfig info file version mismatch (found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_14
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") reading from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private static warning(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sun.awt.FontConfiguration"

    invoke-static {v0}, Lsun/util/logging/NeoPlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/util/logging/NeoPlatformLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method private writeFcInfo()V
    .locals 9

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    check-cast v1, Lsun/awt/FcFontManager;

    invoke-virtual {v1}, Lsun/awt/FcFontManager;->getFontConfigManager()Lsun/font/FontConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lsun/font/FontConfigManager;->getFontConfigInfo()Lsun/font/FontConfigManager$FontConfigInfo;

    move-result-object v1

    iget v2, v1, Lsun/font/FontConfigManager$FontConfigInfo;->fcVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fcversion"

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, v1, Lsun/font/FontConfigManager$FontConfigInfo;->cacheDirs:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iget-object v4, v1, Lsun/font/FontConfigManager$FontConfigInfo;->cacheDirs:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cachedir."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lsun/font/FontConfigManager$FontConfigInfo;->cacheDirs:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    iget-object v2, p0, Lsun/font/FcFontConfiguration;->fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;

    array-length v4, v2

    if-ge v1, v4, :cond_4

    aget-object v2, v2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lsun/font/FontConfigManager$FcCompFont;->jdkName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lsun/font/FontConfigManager$FcCompFont;->style:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".length"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move v6, v3

    :goto_2
    iget-object v7, v2, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    array-length v7, v7

    if-ge v6, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    aget-object v8, v8, v6

    iget-object v8, v8, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v7, v2, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    aget-object v7, v7, v6

    iget-object v7, v7, Lsun/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".fullName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    aget-object v8, v8, v6

    iget-object v8, v8, Lsun/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    :try_start_0
    invoke-direct {p0}, Lsun/font/FcFontConfiguration;->getFcInfoFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fcinfo"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/onyx/common/util/FileUtils;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "JDK Font Configuration Generated File: *Do Not Edit*"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "rename failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed renaming file to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lsun/font/FcFontConfiguration;->getFcInfoFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException writing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lsun/font/FcFontConfiguration;->getFcInfoFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public buildFontDescriptors(II)[Lsun/awt/FontDescriptor;
    .locals 5

    invoke-virtual {p0}, Lsun/font/FcFontConfiguration;->get2DCompositeFontInfo()[Lsun/font/CompositeFontDescriptor;

    move-result-object p0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lsun/font/CompositeFontDescriptor;->getComponentFaceNames()[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    new-array p1, p1, [Lsun/awt/FontDescriptor;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    new-instance v1, Lsun/awt/FontDescriptor;

    aget-object v2, p0, v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    new-array v4, p2, [I

    invoke-direct {v1, v2, v3, v4}, Lsun/awt/FontDescriptor;-><init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;[I)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public get2DCompositeFontInfo()[Lsun/font/CompositeFontDescriptor;
    .locals 15

    iget-object v0, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    check-cast v0, Lsun/awt/FcFontManager;

    invoke-virtual {v0}, Lsun/awt/FcFontManager;->getFontConfigManager()Lsun/font/FontConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/FontConfigManager;->loadFontConfig()[Lsun/font/FontConfigManager$FcCompFont;

    move-result-object v0

    const/16 v1, 0x14

    new-array v1, v1, [Lsun/font/CompositeFontDescriptor;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    sget-object v4, Lsun/awt/FontConfiguration;->publicFontNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    move v5, v2

    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lsun/awt/FontConfiguration;->styleNames:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lsun/awt/FontConfiguration;->fontNames:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {p0, v0, v6, v5}, Lsun/font/FcFontConfiguration;->getFcFontList([Lsun/font/FontConfigManager$FcCompFont;Ljava/lang/String;I)[Lsun/font/FontConfigManager$FontConfigFont;

    move-result-object v6

    array-length v7, v6

    sget-object v8, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    if-eqz v8, :cond_0

    array-length v8, v8

    add-int/2addr v7, v8

    :cond_0
    new-array v12, v7, [Ljava/lang/String;

    new-array v11, v7, [Ljava/lang/String;

    move v7, v2

    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_1

    aget-object v8, v6, v7

    iget-object v8, v8, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    aput-object v8, v12, v7

    aget-object v8, v6, v7

    iget-object v8, v8, Lsun/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    aput-object v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    sget-object v7, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    if-eqz v7, :cond_2

    array-length v6, v6

    array-length v8, v7

    invoke-static {v7, v2, v12, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v6, v5

    new-instance v7, Lsun/font/CompositeFontDescriptor;

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v14}, Lsun/font/CompositeFontDescriptor;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    aput-object v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getDefaultFontCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 0

    const-string p0, "ISO8859_1"

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public getEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "default"

    return-object p0
.end method

.method public getExtraFontPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFaceNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFallbackFamilyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lsun/awt/FontConfiguration;->getCompatibilityFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public getFileNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumberCoreFonts()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPlatformFontNames()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    check-cast p0, Lsun/awt/FcFontManager;

    invoke-virtual {p0}, Lsun/awt/FcFontManager;->getFontConfigManager()Lsun/font/FontConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/FontConfigManager;->loadFontConfig()[Lsun/font/FontConfigManager$FcCompFont;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    aget-object v4, p0, v2

    iget-object v4, v4, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    iget-object v4, v4, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized init()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/FcFontConfiguration;->fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->setFontConfiguration()V

    invoke-direct {p0}, Lsun/font/FcFontConfiguration;->readFcInfo()V

    iget-object v0, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    check-cast v0, Lsun/awt/FcFontManager;

    invoke-virtual {v0}, Lsun/awt/FcFontManager;->getFontConfigManager()Lsun/font/FontConfigManager;

    move-result-object v0

    iget-object v2, p0, Lsun/font/FcFontConfiguration;->fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lsun/font/FontConfigManager;->loadFontConfig()[Lsun/font/FontConfigManager$FcCompFont;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FcFontConfiguration;->fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-direct {p0}, Lsun/font/FcFontConfiguration;->writeFcInfo()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception writing fcInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Failed to get info from libfontconfig"

    invoke-static {v0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lsun/font/FontConfigManager;->populateFontConfig([Lsun/font/FontConfigManager$FcCompFont;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lsun/font/FcFontConfiguration;->fcCompFonts:[Lsun/font/FontConfigManager$FcCompFont;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_4

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_4
    :try_start_4
    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lib"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/awt/FontConfiguration;->getInstalledFallbackFonts(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "java.home property not set"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initReorderMap()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    return-void
.end method

.method public needToSearchForFile(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOsNameAndVersion()V
    .locals 2

    invoke-super {p0}, Lsun/awt/FontConfiguration;->setOsNameAndVersion()V

    sget-object v0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/lsb-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "DISTRIB_ID"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    const-string v0, "DISTRIB_RELEASE"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/redhat-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RedHat"

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/FcFontConfiguration;->getVersionString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/SuSE-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SuSE"

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/FcFontConfiguration;->getVersionString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/turbolinux-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Turbo"

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/FcFontConfiguration;->getVersionString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/fedora-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Fedora"

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/FcFontConfiguration;->getVersionString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Exception identifying Linux distro."

    invoke-static {p0}, Lsun/font/FcFontConfiguration;->warning(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
