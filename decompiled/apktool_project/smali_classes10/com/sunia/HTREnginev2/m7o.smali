.class public final Lcom/sunia/HTREnginev2/m7o;
.super Lcom/sunia/HTREnginev2/qhg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/qhg;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/io/File;)J
    .locals 3

    const/4 p0, 0x5

    :try_start_0
    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "CMD.EXE"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "/C"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "DIR"

    const/4 v2, 0x2

    aput-object v0, p0, v2

    const-string v0, "/-C"

    const/4 v2, 0x3

    aput-object v0, p0, v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/qhg;->a([Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/twelvemonkeys/io/FileUtil;->a(Ljava/io/Reader;)V

    if-eqz p1, :cond_1

    const-string p0, " bytes free"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-ltz v0, :cond_1

    if-ltz p0, :cond_1

    add-int/2addr v0, v1

    :try_start_3
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-wide p0

    :catchall_0
    move-exception p1

    :try_start_4
    invoke-static {p0}, Lcom/twelvemonkeys/io/FileUtil;->a(Ljava/io/Reader;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "Win32"

    return-object p0
.end method

.method public e(Ljava/io/File;)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/m7o;->c(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method
