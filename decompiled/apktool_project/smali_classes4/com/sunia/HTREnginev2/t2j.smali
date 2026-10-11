.class public Lcom/sunia/HTREnginev2/t2j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lorg/slf4j/Logger;

.field public static final i:I = 0x16

.field public static final j:J = 0x0L

.field public static final k:Ljava/lang/String; = "0123456789abcdef"


# instance fields
.field public final a:Ljava/io/File;

.field public b:Ljava/io/RandomAccessFile;

.field public c:Ljava/nio/channels/FileChannel;

.field public d:Ljava/nio/channels/FileLock;

.field public e:Ljava/nio/ByteBuffer;

.field public f:Z

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sunia/HTREnginev2/t2j;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/t2j;->h:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sunia/HTREnginev2/t2j;->g:J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t2j;->a:Ljava/io/File;

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rwd"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/t2j;->b:Ljava/io/RandomAccessFile;

    iput-object v2, p0, Lcom/sunia/HTREnginev2/t2j;->c:Ljava/nio/channels/FileChannel;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->d:Ljava/nio/channels/FileLock;

    return-void

    :cond_0
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to lock \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' (another JVM running UUIDGenerator?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to access channel for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/sunia/HTREnginev2/t2j;->b(Ljava/io/File;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V

    throw p0
.end method

.method public static b(Ljava/io/File;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v0, Lcom/sunia/HTREnginev2/t2j;->h:Lorg/slf4j/Logger;

    const-string v1, "Failed to release lock (for file \'{}\')"

    invoke-interface {v0, v1, p0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    sget-object p2, Lcom/sunia/HTREnginev2/t2j;->h:Lorg/slf4j/Logger;

    const-string v0, "Failed to close file \'{}\'"

    invoke-interface {p2, v0, p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->b:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/t2j;->b:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/t2j;->d:Ljava/nio/channels/FileLock;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/t2j;->d:Ljava/nio/channels/FileLock;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t2j;->a:Ljava/io/File;

    invoke-static {p0, v0, v2}, Lcom/sunia/HTREnginev2/t2j;->b(Ljava/io/File;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V

    return-void
.end method

.method public c()J
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/t2j;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    long-to-int v2, v2

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sunia/HTREnginev2/t2j;->f:Z

    if-nez v2, :cond_1

    sget-object p0, Lcom/sunia/HTREnginev2/t2j;->h:Lorg/slf4j/Logger;

    const-string v2, "Missing or empty file, can not read timestamp value"

    invoke-interface {p0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-wide v0

    :cond_1
    const/16 v3, 0x64

    if-le v2, v3, :cond_2

    move v2, v3

    :cond_2
    new-array v3, v2, [B

    :try_start_1
    iget-object v5, p0, Lcom/sunia/HTREnginev2/t2j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    new-array v5, v2, [C

    :goto_1
    if-ge v4, v2, :cond_3

    aget-byte v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    aput-char v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_7

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v7, 0x78

    if-eq v3, v7, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x5d

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gtz v3, :cond_5

    const-string v2, "does not end with \']\' marker"

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x10

    if-le v3, v6, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length of the (hex) timestamp too long; expected 16, had "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-static {v2, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "does not contain a valid hex timestamp; got \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' (parse error: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    :goto_2
    const-string v2, "does not start with \'[0x\' prefix"

    :goto_3
    cmp-long v3, v4, v0

    if-gez v3, :cond_8

    sget-object v3, Lcom/sunia/HTREnginev2/t2j;->h:Lorg/slf4j/Logger;

    const-string v4, "(file \'{}\') Malformed timestamp file contents: {}"

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t2j;->a:Ljava/io/File;

    invoke-interface {v3, v4, p0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v0

    :cond_8
    iput-wide v4, p0, Lcom/sunia/HTREnginev2/t2j;->g:J

    return-wide v4

    :catch_1
    move-exception v3

    sget-object v4, Lcom/sunia/HTREnginev2/t2j;->h:Lorg/slf4j/Logger;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t2j;->a:Ljava/io/File;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "(file \'{}\') Failed to read {} bytes"

    invoke-interface {v4, v2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0

    :catch_2
    move-exception p0

    sget-object v2, Lcom/sunia/HTREnginev2/t2j;->h:Lorg/slf4j/Logger;

    const-string v3, "Failed to read file size"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method public d(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/t2j;->g:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sunia/HTREnginev2/t2j;->h:Lorg/slf4j/Logger;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t2j;->a:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "(file \'{}\') Trying to re-write existing timestamp ({})"

    invoke-interface {v0, p2, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/t2j;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " trying to overwrite existing value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/t2j;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") with an earlier timestamp ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x16

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const/16 v2, 0x13

    const/16 v3, 0x5d

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const/16 v2, 0x14

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_2
    const/16 v0, 0x12

    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0xf

    iget-object v3, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const-string v4, "0123456789abcdef"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v3, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    shr-long/2addr p1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/sunia/HTREnginev2/t2j;->c:Ljava/nio/channels/FileChannel;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/t2j;->e:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/t2j;->f:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sunia/HTREnginev2/t2j;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x16

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/t2j;->f:Z

    :cond_4
    iget-object p0, p0, Lcom/sunia/HTREnginev2/t2j;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method
