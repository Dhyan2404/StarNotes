.class Lsun/font/SunFontManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/SunFontManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/SunFontManager;


# direct methods
.method public constructor <init>(Lsun/font/SunFontManager;)V
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/font/SunFontManager$2;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 9

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "badfonts.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lsun/font/SunFontManager;->access$302(Lsun/font/SunFontManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 7
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_0

    .line 8
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 9
    :cond_0
    :try_start_5
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read bad font: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v3, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    invoke-static {v3}, Lsun/font/SunFontManager;->access$300(Lsun/font/SunFontManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 12
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    .line 13
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    .line 14
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v2

    .line 15
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 16
    :catch_0
    :cond_2
    :goto_3
    sget-boolean v0, Lsun/font/FontUtilities;->isLinux:Z

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    sget-object v1, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/font/SunFontManager;->registerFontDir(Ljava/lang/String;)V

    .line 18
    :cond_3
    iget-object v2, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    sget-object v3, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/font/SunFontManager;->registerFontsInDir(Ljava/lang/String;ZIZZ)V

    .line 19
    iget-object v0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    invoke-virtual {v0}, Lsun/font/SunFontManager;->createFontConfiguration()Lsun/awt/FontConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/font/SunFontManager;->access$402(Lsun/font/SunFontManager;Lsun/awt/FontConfiguration;)Lsun/awt/FontConfiguration;

    .line 20
    iget-object v0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    invoke-virtual {v0}, Lsun/font/SunFontManager;->getDefaultPlatformFont()[Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lsun/font/SunFontManager;->access$502(Lsun/font/SunFontManager;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    invoke-static {v1}, Lsun/font/SunFontManager;->access$500(Lsun/font/SunFontManager;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "defaultFontName is null"

    .line 23
    invoke-static {v1}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    .line 24
    :cond_4
    iget-object v1, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lsun/font/SunFontManager;->access$602(Lsun/font/SunFontManager;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    invoke-static {v0}, Lsun/font/SunFontManager;->access$400(Lsun/font/SunFontManager;)Lsun/awt/FontConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lsun/awt/FontConfiguration;->getExtraFontPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sun.java2d.fontpath"

    .line 26
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v4, "prepend:"

    .line 27
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v4, "append:"

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x7

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_4

    :cond_6
    move v3, v2

    .line 31
    :goto_4
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JRE font directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extra font path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debug font path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_7
    if-eqz v1, :cond_b

    .line 35
    iget-object v4, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    sget-boolean v5, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {v4, v5}, Lsun/font/SunFontManager;->getPlatformFontPath(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 36
    iget-object v4, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    iget-object v0, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    :cond_8
    if-eqz v2, :cond_9

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    iget-object v3, v2, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_a

    .line 38
    iget-object v0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    iget-object v1, v1, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    goto :goto_5

    .line 39
    :cond_a
    iget-object v0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    iput-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    .line 40
    :goto_5
    iget-object v0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    iget-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/font/SunFontManager;->registerFontDirs(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_c

    .line 41
    iget-object v1, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    invoke-virtual {v1, v0}, Lsun/font/SunFontManager;->registerFontDirs(Ljava/lang/String;)V

    .line 42
    :cond_c
    :goto_6
    iget-object p0, p0, Lsun/font/SunFontManager$2;->this$0:Lsun/font/SunFontManager;

    invoke-static {p0}, Lsun/font/SunFontManager;->access$400(Lsun/font/SunFontManager;)Lsun/awt/FontConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lsun/font/SunFontManager;->access$700(Lsun/font/SunFontManager;Lsun/awt/FontConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v1
.end method
