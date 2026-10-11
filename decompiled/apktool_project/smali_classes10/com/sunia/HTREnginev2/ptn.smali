.class public final Lcom/sunia/HTREnginev2/ptn;
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
    .locals 1

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/ptn;->f(Ljava/io/File;I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "Unix"

    return-object p0
.end method

.method public e(Ljava/io/File;)J
    .locals 1

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/ptn;->f(Ljava/io/File;I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final f(Ljava/io/File;I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "-k"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "df"

    filled-new-array {v0, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/qhg;->a([Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/twelvemonkeys/io/FileUtil;->a(Ljava/io/Reader;)V

    if-eqz v0, :cond_2

    new-instance p0, Lcom/twelvemonkeys/util/StringTokenIterator;

    const-string v1, " "

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twelvemonkeys/util/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractTokenIterator;->nextToken()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v0, 0x400

    mul-long/2addr p0, v0

    return-wide p0

    :catch_0
    :cond_2
    const-wide/16 p0, 0x0

    return-wide p0

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/twelvemonkeys/io/FileUtil;->a(Ljava/io/Reader;)V

    throw p1
.end method
