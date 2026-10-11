.class final Lcom/twelvemonkeys/io/Win32Lnk;
.super Ljava/io/File;
.source "SourceFile"


# static fields
.field private static final FLAG_ADDITIONAL_INFO:I = 0x80

.field private static final FLAG_COMMAND_LINE_ARGS:I = 0x20

.field private static final FLAG_DESC_STRING:I = 0x4

.field private static final FLAG_FILE_LOC_INFO:I = 0x2

.field private static final FLAG_ICON_FILENAME:I = 0x40

.field private static final FLAG_ITEM_ID_LIST:I = 0x1

.field private static final FLAG_REL_PATH_STRING:I = 0x8

.field private static final FLAG_WORKING_DIRECTORY:I = 0x10

.field private static final LNK_GUID:[B

.field private static final LNK_MAGIC:[B


# instance fields
.field private final target:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twelvemonkeys/io/Win32Lnk;->LNK_MAGIC:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twelvemonkeys/io/Win32Lnk;->LNK_GUID:[B

    return-void

    :array_0
    .array-data 1
        0x4ct
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x14t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/io/Win32Lnk;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32Lnk;->parse(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    return-void
.end method

.method public static parse(Ljava/io/File;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x4

    :try_start_0
    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readFully([B)V

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readFully([B)V

    sget-object v4, Lcom/twelvemonkeys/io/Win32Lnk;->LNK_MAGIC:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/twelvemonkeys/io/Win32Lnk;->LNK_GUID:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readInt()I

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->skipBytes(I)I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readShort()S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->skipBytes(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    and-int/lit8 v3, v2, 0x2

    const-string v4, "Cannot resolve cyclic link: "

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readInt()I

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readInt()I

    invoke-virtual {v0, v1}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->skipBytes(I)I

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v6, v1, -0x14

    invoke-virtual {v0, v6}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->skipBytes(I)I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v1, v3, [B

    invoke-virtual {v0, v1, v5, v3}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readFully([BII)V

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v6, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/twelvemonkeys/io/Win32Lnk;->parse(Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v1, p0

    :goto_0
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readShort()S

    move-result v3

    new-array v6, v3, [B

    invoke-virtual {v0, v6, v5, v3}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readFully([BII)V

    :cond_4
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readShort()S

    move-result v3

    new-array v6, v3, [B

    invoke-virtual {v0, v6, v5, v3}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;->readFully([BII)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, p0, :cond_5

    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/twelvemonkeys/io/Win32Lnk;->parse(Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move-object p0, v1

    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method


# virtual methods
.method public canRead()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    return p0
.end method

.method public canWrite()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    return p0
.end method

.method public exists()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTarget()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    return-object p0
.end method

.method public isDirectory()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public isFile()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result p0

    return p0
.end method

.method public lastModified()J
    .locals 2

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public listFiles()[Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/io/Win32File;->wrap([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public setLastModified(J)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result p0

    return p0
.end method

.method public setReadOnly()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->setReadOnly()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twelvemonkeys/io/Win32Lnk;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
