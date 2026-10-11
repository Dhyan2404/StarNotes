.class public abstract Lcom/sunia/HTREnginev2/u7n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lcom/onegravity/rteditor/fonts/TTFAssetInputStream;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/fonts/TTFAssetInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/u7n;->c(Lcom/onegravity/rteditor/fonts/TTFInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/onegravity/rteditor/utils/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v1}, Lcom/onegravity/rteditor/utils/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    move-object v0, v1

    :catch_1
    invoke-static {v0}, Lcom/onegravity/rteditor/utils/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_2
    move-object v0, v1

    :catch_3
    invoke-static {v0}, Lcom/onegravity/rteditor/utils/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/onegravity/rteditor/fonts/TTFRandomAccessFile;

    invoke-direct {v2, v1}, Lcom/onegravity/rteditor/fonts/TTFRandomAccessFile;-><init>(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/u7n;->c(Lcom/onegravity/rteditor/fonts/TTFInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/onegravity/rteditor/utils/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lcom/onegravity/rteditor/utils/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    move-object v2, v0

    :catch_1
    invoke-static {v2}, Lcom/onegravity/rteditor/utils/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static c(Lcom/onegravity/rteditor/fonts/TTFInputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->g(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v0

    const v1, 0x74727565

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    const v1, 0x4f54544f    # 3.56229504E9f

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->h(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->h(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->h(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->h(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->g(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v3

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->g(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->g(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v4

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->g(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v5

    const v6, 0x6e616d65

    if-ne v3, v6, :cond_2

    new-array v3, v5, [B

    int-to-long v6, v4

    invoke-interface {p0, v6, v7}, Lcom/onegravity/rteditor/fonts/TTFInputStream;->seek(J)V

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/u7n;->e(Lcom/onegravity/rteditor/fonts/TTFInputStream;[B)V

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/sunia/HTREnginev2/u7n;->d([BI)I

    move-result v4

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/sunia/HTREnginev2/u7n;->d([BI)I

    move-result v7

    move v8, v1

    :goto_1
    if-ge v8, v4, :cond_2

    mul-int/lit8 v9, v8, 0xc

    add-int/lit8 v9, v9, 0x6

    invoke-static {v3, v9}, Lcom/sunia/HTREnginev2/u7n;->d([BI)I

    move-result v10

    add-int/lit8 v11, v9, 0x6

    invoke-static {v3, v11}, Lcom/sunia/HTREnginev2/u7n;->d([BI)I

    move-result v11

    if-ne v11, v6, :cond_1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    add-int/lit8 v10, v9, 0x8

    invoke-static {v3, v10}, Lcom/sunia/HTREnginev2/u7n;->d([BI)I

    move-result v10

    add-int/lit8 v9, v9, 0xa

    invoke-static {v3, v9}, Lcom/sunia/HTREnginev2/u7n;->d([BI)I

    move-result v9

    add-int/2addr v9, v7

    if-ltz v9, :cond_1

    add-int v11, v9, v10

    if-ge v11, v5, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v9, v10}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-object p1
.end method

.method public static d([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method public static e(Lcom/onegravity/rteditor/fonts/TTFInputStream;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/fonts/TTFInputStream;->read([B)I

    move-result p0

    array-length p1, p1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static f(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/onegravity/rteditor/fonts/TTFInputStream;->read()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static g(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->f(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->f(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->f(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v2

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->f(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result p0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static h(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->f(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result v0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/u7n;->f(Lcom/onegravity/rteditor/fonts/TTFInputStream;)I

    move-result p0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    return p0
.end method
