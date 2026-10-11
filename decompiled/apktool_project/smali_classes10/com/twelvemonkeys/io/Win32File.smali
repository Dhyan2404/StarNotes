.class final Lcom/twelvemonkeys/io/Win32File;
.super Ljava/io/File;
.source "SourceFile"


# static fields
.field private static final IS_WINDOWS:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/twelvemonkeys/io/Win32File;->isWindows()Z

    move-result v0

    sput-boolean v0, Lcom/twelvemonkeys/io/Win32File;->IS_WINDOWS:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static isWindows()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static listFiles(Ljava/io/File;IZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, " "

    if-ge v2, p1, :cond_0

    .line 3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    array-length p0, v0

    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_4

    aget-object v4, v0, v2

    move v5, v1

    :goto_2
    if-ge v5, p1, :cond_1

    .line 6
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 7
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    add-int/lit8 v5, p1, 0x1

    const/4 v6, 0x4

    if-ge p1, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    move v6, v1

    .line 8
    :goto_3
    invoke-static {v4, v5, v6}, Lcom/twelvemonkeys/io/Win32File;->listFiles(Ljava/io/File;IZ)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x52

    if-eq v3, v6, :cond_1

    aget-object v3, p0, v1

    const-string v6, "--recursive"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v5

    :goto_2
    move v1, v4

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/File;

    aget-object p0, p0, v1

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/twelvemonkeys/io/Win32File;->wrap(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file.getClass(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/twelvemonkeys/io/Win32File;->listFiles(Ljava/io/File;IZ)V

    return-void
.end method

.method public static wrap(Ljava/io/File;)Ljava/io/File;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-boolean v0, Lcom/twelvemonkeys/io/Win32File;->IS_WINDOWS:Z

    if-eqz v0, :cond_3

    .line 2
    instance-of v0, p0, Lcom/twelvemonkeys/io/Win32File;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/twelvemonkeys/io/Win32Lnk;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    new-instance v0, Lcom/twelvemonkeys/io/Win32Lnk;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/io/Win32Lnk;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :cond_2
    new-instance v0, Lcom/twelvemonkeys/io/Win32File;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/io/Win32File;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static wrap([Ljava/io/File;)[Ljava/io/File;
    .locals 2

    .line 7
    sget-boolean v0, Lcom/twelvemonkeys/io/Win32File;->IS_WINDOWS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 8
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 9
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/twelvemonkeys/io/Win32File;->wrap(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAbsoluteFile()Ljava/io/File;
    .locals 0

    invoke-super {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getParentFile()Ljava/io/File;
    .locals 0

    invoke-super {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public listFiles()[Ljava/io/File;
    .locals 0

    .line 9
    invoke-super {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 0

    .line 10
    invoke-super {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 11
    invoke-super {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
