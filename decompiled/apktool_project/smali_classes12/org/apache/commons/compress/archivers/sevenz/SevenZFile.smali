.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;
    }
.end annotation


# static fields
.field public static final p:I = 0x20

.field public static final q:Ljava/lang/String; = "unknown archive"

.field public static final r:[B


# instance fields
.field public final e:Ljava/lang/String;

.field public f:Ljava/nio/channels/SeekableByteChannel;

.field public final g:Lcom/sunia/HTREnginev2/od;

.field public h:I

.field public i:I

.field public j:Ljava/io/InputStream;

.field public k:[B

.field public final l:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

.field public m:J

.field public n:J

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->r:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    sget-object v8, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    move-object v3, p0

    move-object v6, p2

    .line 7
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->R0([C)[B

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    move-object v8, p3

    .line 4
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    .line 17
    sget-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    .line 20
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->i:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    .line 23
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    .line 25
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->y0([B)Lcom/sunia/HTREnginev2/od;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    if-eqz p3, :cond_0

    .line 26
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_1

    .line 28
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    .line 29
    :cond_1
    throw p1
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->R0([C)[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unknown archive"

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "unknown archive"

    .line 16
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unknown archive"

    .line 11
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public static D0(Ljava/nio/ByteBuffer;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x80

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    const/16 v8, 0x8

    if-ge v5, v8, :cond_1

    int-to-long v9, v2

    and-long/2addr v9, v0

    cmp-long v9, v9, v3

    if-nez v9, :cond_0

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    mul-int/2addr v5, v8

    shl-long/2addr v0, v5

    or-long/2addr v0, v6

    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v8, v8

    mul-int/lit8 v10, v5, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-wide v6
.end method

.method public static synthetic H(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->n:J

    return-wide v0
.end method

.method public static I(Ljava/lang/String;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int p0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static O0(Ljava/nio/ByteBuffer;J)J
    .locals 4

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    move-wide p1, v1

    :cond_1
    long-to-int v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1
.end method

.method public static R0([C)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static synthetic f(I)[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->p0(I)[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Ljava/nio/ByteBuffer;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    array-length v1, p1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static i0(Ljava/nio/ByteBuffer;)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static synthetic j(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m:J

    return-wide v0
.end method

.method public static k0(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static l0(Ljava/nio/ByteBuffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static m0(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static matches([BI)Z
    .locals 3

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->r:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    move p1, v1

    :goto_0
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->r:[B

    array-length v2, v0

    if-ge p1, v2, :cond_2

    aget-byte v2, p0, p1

    aget-byte v0, v0, p1

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic p0(I)[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 0

    new-array p0, p0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    return-object p0
.end method

.method public static synthetic w(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m:J

    return-wide p1
.end method


# virtual methods
.method public final A0(J)Lcom/sunia/HTREnginev2/vxm;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/vxm;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/vxm;-><init>()V

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v8, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    new-instance v3, Lcom/sunia/HTREnginev2/qu;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v4, 0x14

    invoke-direct {v3, v2, v4, v5}, Lcom/sunia/HTREnginev2/qu;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    move-object v2, v8

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/sunia/HTREnginev2/vxm;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x20

    add-long/2addr p1, v2

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    cmp-long p1, p1, v4

    if-gtz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/sunia/HTREnginev2/vxm;->b:J

    iget-wide v4, v0, Lcom/sunia/HTREnginev2/vxm;->a:J

    add-long/2addr p1, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    add-long/2addr p1, v2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    cmp-long p0, p1, v2

    if-gtz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    iput-wide p0, v0, Lcom/sunia/HTREnginev2/vxm;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "nextHeaderSize is out of bounds"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "nextHeaderOffset is out of bounds"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public final B0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->z0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->E0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sunia/HTREnginev2/sog;->j:[Lcom/sunia/HTREnginev2/sog;

    iput-object v1, p2, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->C0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :cond_2
    return-void
.end method

.method public final C0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    iput v5, v6, Lcom/sunia/HTREnginev2/sog;->i:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    array-length v1, v1

    int-to-long v1, v1

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/16 v6, 0xd

    const-wide/16 v7, 0x0

    if-ne v4, v6, :cond_2

    iget-object v1, v0, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    array-length v2, v1

    move-wide v9, v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    long-to-int v13, v11

    iput v13, v6, Lcom/sunia/HTREnginev2/sog;->i:I

    add-long/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v4

    move-wide v1, v9

    :cond_2
    long-to-int v1, v1

    new-instance v2, Lcom/sunia/HTREnginev2/b5n;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/b5n;-><init>()V

    new-array v6, v1, [J

    iput-object v6, v2, Lcom/sunia/HTREnginev2/b5n;->a:[J

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v6, v2, Lcom/sunia/HTREnginev2/b5n;->b:Ljava/util/BitSet;

    new-array v1, v1, [J

    iput-object v1, v2, Lcom/sunia/HTREnginev2/b5n;->c:[J

    iget-object v1, v0, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    array-length v6, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x9

    if-ge v9, v6, :cond_6

    aget-object v12, v1, v9

    iget v13, v12, Lcom/sunia/HTREnginev2/sog;->i:I

    if-nez v13, :cond_3

    goto :goto_4

    :cond_3
    move-wide v13, v7

    if-ne v4, v11, :cond_4

    const/4 v11, 0x0

    :goto_3
    iget v15, v12, Lcom/sunia/HTREnginev2/sog;->i:I

    sub-int/2addr v15, v5

    if-ge v11, v15, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v15

    iget-object v3, v2, Lcom/sunia/HTREnginev2/b5n;->a:[J

    add-int/lit8 v17, v10, 0x1

    aput-wide v15, v3, v10

    add-long/2addr v13, v15

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v17

    goto :goto_3

    :cond_4
    invoke-virtual {v12}, Lcom/sunia/HTREnginev2/sog;->d()J

    move-result-wide v15

    cmp-long v3, v13, v15

    if-gtz v3, :cond_5

    iget-object v3, v2, Lcom/sunia/HTREnginev2/b5n;->a:[J

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v12}, Lcom/sunia/HTREnginev2/sog;->d()J

    move-result-wide v15

    sub-long/2addr v15, v13

    aput-wide v15, v3, v10

    move v10, v11

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "sum of unpack sizes of folder exceeds total unpack size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-ne v4, v11, :cond_7

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v4

    :cond_7
    iget-object v1, v0, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    array-length v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v6, v3, :cond_a

    aget-object v8, v1, v6

    iget v9, v8, Lcom/sunia/HTREnginev2/sog;->i:I

    if-ne v9, v5, :cond_8

    iget-boolean v8, v8, Lcom/sunia/HTREnginev2/sog;->g:Z

    if-nez v8, :cond_9

    :cond_8
    add-int/2addr v7, v9

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    const/16 v1, 0xa

    if-ne v4, v1, :cond_10

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    new-array v4, v7, [J

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v7, :cond_c

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k0(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    aput-wide v8, v4, v6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    iget-object v6, v0, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    if-ge v8, v7, :cond_f

    aget-object v11, v6, v8

    iget v12, v11, Lcom/sunia/HTREnginev2/sog;->i:I

    if-ne v12, v5, :cond_d

    iget-boolean v12, v11, Lcom/sunia/HTREnginev2/sog;->g:Z

    if-eqz v12, :cond_d

    iget-object v12, v2, Lcom/sunia/HTREnginev2/b5n;->b:Ljava/util/BitSet;

    invoke-virtual {v12, v9, v5}, Ljava/util/BitSet;->set(IZ)V

    iget-object v12, v2, Lcom/sunia/HTREnginev2/b5n;->c:[J

    iget-wide v13, v11, Lcom/sunia/HTREnginev2/sog;->h:J

    aput-wide v13, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_d
    const/4 v12, 0x0

    :goto_8
    iget v13, v11, Lcom/sunia/HTREnginev2/sog;->i:I

    if-ge v12, v13, :cond_e

    iget-object v13, v2, Lcom/sunia/HTREnginev2/b5n;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v9, v14}, Ljava/util/BitSet;->set(IZ)V

    iget-object v13, v2, Lcom/sunia/HTREnginev2/b5n;->c:[J

    aget-wide v14, v4, v10

    aput-wide v14, v13, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_f
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :cond_10
    iput-object v2, v0, Lcom/sunia/HTREnginev2/od;->f:Lcom/sunia/HTREnginev2/b5n;

    return-void
.end method

.method public final E0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [Lcom/sunia/HTREnginev2/sog;

    iput-object v1, p2, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->v0(Ljava/nio/ByteBuffer;)Lcom/sunia/HTREnginev2/sog;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move v2, p2

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    iget-wide v4, v3, Lcom/sunia/HTREnginev2/sog;->c:J

    const-string v6, "totalOutputStreams"

    invoke-static {v6, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    iget-wide v4, v3, Lcom/sunia/HTREnginev2/sog;->c:J

    long-to-int v4, v4

    new-array v4, v4, [J

    iput-object v4, v3, Lcom/sunia/HTREnginev2/sog;->f:[J

    move v4, p2

    :goto_2
    int-to-long v5, v4

    iget-wide v7, v3, Lcom/sunia/HTREnginev2/sog;->c:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    iget-object v5, v3, Lcom/sunia/HTREnginev2/sog;->f:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p0

    move v2, p2

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v1, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sunia/HTREnginev2/sog;->g:Z

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k0(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sunia/HTREnginev2/sog;->h:J

    goto :goto_4

    :cond_3
    aget-object v3, v1, v2

    iput-boolean p2, v3, Lcom/sunia/HTREnginev2/sog;->g:Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :cond_5
    return-void
.end method

.method public final F0(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    aget-object v3, v1, p1

    iget-object v1, v0, Lcom/sunia/HTREnginev2/od;->h:Lcom/sunia/HTREnginev2/d0n;

    iget-object v2, v1, Lcom/sunia/HTREnginev2/d0n;->a:[I

    aget v6, v2, p1

    const-wide/16 v4, 0x20

    iget-wide v7, v0, Lcom/sunia/HTREnginev2/od;->a:J

    add-long/2addr v7, v4

    iget-object p1, v1, Lcom/sunia/HTREnginev2/d0n;->b:[J

    aget-wide v0, p1, v6

    add-long v4, v7, v0

    move-object v2, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->M(Lcom/sunia/HTREnginev2/sog;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j:Ljava/io/InputStream;

    return-void
.end method

.method public final G0(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$a;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->H0(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v1

    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->L0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v1

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Badly terminated header, found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Additional streams unsupported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final H0(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "propertySize"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid property size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final I0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "numFiles"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v0

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->p(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;I)I

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result p0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p2, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->q(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;I)I

    return-void

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    const-string v6, "Not implemented"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-ltz v3, :cond_11

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete kDummy property"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "kStartPos is unsupported, please report"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_3

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid windows attributes size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_5

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid modification dates size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_7

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid access dates size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_9

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid creation dates size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-nez v2, :cond_e

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const-string v2, "file names length"

    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_d

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_b

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->i0(Ljava/nio/ByteBuffer;)C

    move-result v5

    if-nez v5, :cond_a

    add-int/lit8 v4, v4, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_b
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    if-ne v4, v2, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid number of file names ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instead of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File names length invalid"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    if-eq v1, v0, :cond_f

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->s0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    goto/16 :goto_0

    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    if-eq v1, v0, :cond_10

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->s0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    goto/16 :goto_0

    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->s0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    goto/16 :goto_0

    :cond_11
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Incomplete property of type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final J0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "numCoders"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->m(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->n(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move-wide v9, v7

    move v6, v5

    :goto_0
    const-wide/16 v11, 0x1

    const/4 v13, 0x1

    if-ge v6, v2, :cond_7

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v14

    and-int/lit8 v15, v14, 0xf

    new-array v15, v15, [B

    invoke-static {v0, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h0(Ljava/nio/ByteBuffer;[B)V

    and-int/lit8 v15, v14, 0x10

    if-nez v15, :cond_0

    move v15, v13

    goto :goto_1

    :cond_0
    move v15, v5

    :goto_1
    and-int/lit8 v16, v14, 0x20

    if-eqz v16, :cond_1

    move/from16 v16, v13

    goto :goto_2

    :cond_1
    move/from16 v16, v5

    :goto_2
    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_2

    goto :goto_3

    :cond_2
    move v13, v5

    :goto_3
    if-nez v13, :cond_6

    if-eqz v15, :cond_3

    add-long/2addr v7, v11

    goto :goto_4

    :cond_3
    const-string v11, "numInStreams"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v7, v11

    const-string v11, "numOutStreams"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v11

    int-to-long v11, v11

    :goto_4
    add-long/2addr v9, v11

    if-eqz v16, :cond_5

    const-string v11, "propertiesSize"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v11

    int-to-long v11, v11

    invoke-static {v0, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v13

    cmp-long v11, v13, v11

    if-ltz v11, :cond_4

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid propertiesSize in folder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v2, "totalInStreams"

    invoke-static {v2, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    const-string v2, "totalOutStreams"

    invoke-static {v2, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->e(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J

    move-result-wide v14

    add-long/2addr v14, v9

    invoke-static {v1, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->g(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J

    move-result-wide v14

    add-long/2addr v14, v7

    invoke-static {v1, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->h(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_10

    const-string v1, "numBindPairs"

    sub-long v2, v9, v11

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v1

    int-to-long v2, v1

    cmp-long v4, v7, v2

    if-ltz v4, :cond_f

    new-instance v4, Ljava/util/BitSet;

    long-to-int v6, v7

    invoke-direct {v4, v6}, Ljava/util/BitSet;-><init>(I)V

    move v6, v5

    :goto_6
    if-ge v6, v1, :cond_a

    const-string v11, "inIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-static {v11, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v11

    int-to-long v14, v11

    cmp-long v12, v7, v14

    if-lez v12, :cond_9

    invoke-virtual {v4, v11}, Ljava/util/BitSet;->set(I)V

    const-string v11, "outIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-static {v11, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v9, v11

    if-lez v11, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "outIndex is bigger than number of outStreams"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "inIndex is bigger than number of inStreams"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v1, "numPackedStreams"

    sub-long v2, v7, v2

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v1

    if-ne v1, v13, :cond_c

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_7
    if-ge v5, v1, :cond_e

    const-string v2, "packedStreamIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v7

    if-gez v2, :cond_d

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "packedStreamIndex is bigger than number of totalInStreams"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_8
    long-to-int v0, v9

    return v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Total output streams can\'t be 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Folder without coders"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, ") is out of range"

    if-ltz v6, :cond_6

    const-wide/16 v8, 0x20

    add-long/2addr v8, v2

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v6}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gtz v6, :cond_6

    cmp-long v6, v8, v4

    if-ltz v6, :cond_6

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    const-string v6, "numPackStreams"

    invoke-static {v6, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v6

    move-object/from16 v10, p2

    invoke-static {v10, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->b(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;I)I

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/16 v11, 0x9

    if-ne v6, v11, :cond_2

    const/4 v6, 0x0

    move-wide v11, v4

    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->a(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v13

    if-ge v6, v13, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    add-long/2addr v11, v13

    add-long v15, v8, v11

    cmp-long v17, v13, v4

    if-ltz v17, :cond_0

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    cmp-long v4, v15, v4

    if-gtz v4, :cond_0

    cmp-long v4, v15, v2

    if-ltz v4, :cond_0

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packSize ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v6

    :cond_2
    const/16 v2, 0xa

    if-ne v6, v2, :cond_4

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->a(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_3

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v6

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid number of CRCs in PackInfo"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    if-nez v6, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Badly terminated PackInfo ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packPos ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->K0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->N0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->M0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Badly terminated StreamsInfo"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final M(Lcom/sunia/HTREnginev2/sog;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p2, p3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    new-instance p2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$a;

    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance v0, Lcom/sunia/HTREnginev2/qu;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/od;->b:[J

    aget-wide v2, v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/qu;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    invoke-direct {p3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$a;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sog;->c()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move-object v1, p2

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/rwd;

    iget-wide v2, p2, Lcom/sunia/HTREnginev2/rwd;->b:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p2, Lcom/sunia/HTREnginev2/rwd;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/sunia/HTREnginev2/rwd;->a:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v7

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/sog;->e(Lcom/sunia/HTREnginev2/rwd;)J

    move-result-wide v2

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k:[B

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v6

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->a(Ljava/lang/String;Ljava/io/InputStream;JLcom/sunia/HTREnginev2/rwd;[BI)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->c(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lcom/sunia/HTREnginev2/swd;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/sunia/HTREnginev2/swd;->e(Lcom/sunia/HTREnginev2/rwd;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, v7, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Multi input/output stream coders are not yet supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p5, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    iget-boolean p0, p1, Lcom/sunia/HTREnginev2/sog;->g:Z

    if-eqz p0, :cond_2

    new-instance p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sog;->d()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/sunia/HTREnginev2/sog;->h:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final M0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    :goto_0
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    if-ge v0, v2, :cond_0

    const-string v2, "numStreams"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/nlm;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/nlm;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->l(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {p2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->l(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J

    :goto_1
    const-string v2, "totalUnpackStreams"

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->k(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_3
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_2

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "negative unpackSize"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->i(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)Ljava/util/BitSet;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result p2

    goto :goto_6

    :cond_7
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v1

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->i(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result p2

    sub-int p2, v1, p2

    goto :goto_6

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->i(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)Ljava/util/BitSet;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->i(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)Ljava/util/BitSet;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v6

    goto :goto_5

    :cond_9
    move v2, v6

    goto :goto_4

    :cond_a
    :goto_5
    add-int/2addr v3, v4

    goto :goto_4

    :cond_b
    move p2, v3

    :goto_6
    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    const-string v0, "numDigests"

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-ltz p0, :cond_c

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_7

    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid number of missing CRCs in SubStreamInfo"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_7
    if-nez v0, :cond_e

    return-void

    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Badly terminated SubStreamsInfo"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final N0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-string v2, "numFolders"

    invoke-static {v2, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result v0

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->d(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;I)I

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->J0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->e(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J

    move-result-wide v2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->g(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->a(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_8

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "negative unpackSize"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->j(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;Ljava/util/BitSet;)Ljava/util/BitSet;

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->i(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-ltz p0, :cond_4

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid number of CRCs in UnpackInfo"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Badly terminated UnpackInfo"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected kCodersUnpackSize, got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "archive doesn\'t contain enough packed streams"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "External unsupported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected kFolder, got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final P0(IZI)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v0, v0, p1

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->n0()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/od;->h:Lcom/sunia/HTREnginev2/d0n;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/d0n;->c:[I

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->i:I

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    if-ge p2, p1, :cond_1

    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->F0(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    :cond_2
    :goto_0
    if-ge v1, p1, :cond_4

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object p2, p2, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object p2, p2, v1

    new-instance v4, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j:Ljava/io/InputStream;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v5

    invoke-direct {v4, p3, v5, v6}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v7

    move-object v3, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v4, p3

    :cond_3
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final Q0([B)Lcom/sunia/HTREnginev2/od;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    add-long/2addr v4, v6

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v8}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    sub-long/2addr v4, v6

    :goto_0
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v6}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    :catch_0
    :cond_1
    cmp-long v10, v6, v4

    if-lez v10, :cond_4

    sub-long/2addr v6, v8

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v10, v6, v7}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v10, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-lt v10, v0, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    const/16 v12, 0x17

    if-eq v10, v12, :cond_2

    if-ne v10, v0, :cond_1

    :cond_2
    :try_start_0
    new-instance v10, Lcom/sunia/HTREnginev2/vxm;

    invoke-direct {v10}, Lcom/sunia/HTREnginev2/vxm;-><init>()V

    sub-long v12, v6, v2

    iput-wide v12, v10, Lcom/sunia/HTREnginev2/vxm;->a:J

    iget-object v12, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v12}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v12

    sub-long/2addr v12, v6

    iput-wide v12, v10, Lcom/sunia/HTREnginev2/vxm;->b:J

    invoke-virtual {p0, v10, p1, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o0(Lcom/sunia/HTREnginev2/vxm;[BZ)Lcom/sunia/HTREnginev2/od;

    move-result-object v10

    iget-object v11, v10, Lcom/sunia/HTREnginev2/od;->b:[J

    array-length v11, v11

    if-lez v11, :cond_1

    iget-object v11, v10, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v11, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v11, :cond_1

    return-object v10

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Start header corrupt and unable to guess end header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k:[B

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k:[B

    if-eqz v3, :cond_1

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_1
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k:[B

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final e0(IZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/od;->h:Lcom/sunia/HTREnginev2/d0n;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/sunia/HTREnginev2/d0n;->d:[I

    aget v1, v1, p1

    if-gez v1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v2, v0, p1

    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->i:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_3

    if-lez p1, :cond_1

    add-int/lit8 v3, p1, -0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/od;->h:Lcom/sunia/HTREnginev2/d0n;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/d0n;->c:[I

    aget v3, v3, v1

    iget-object v0, v0, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->i:I

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->F0(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    move v0, v4

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->P0(IZI)Z

    move-result v4

    :cond_4
    if-eqz p2, :cond_5

    iget p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    if-ne p2, p1, :cond_5

    if-nez v4, :cond_5

    return-void

    :cond_5
    new-instance v6, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j:Ljava/io/InputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-direct {v6, p1, v0, v1}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v9

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v6, p1

    :cond_6
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Archive doesn\'t contain stream information to read entries"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f0(Lcom/sunia/HTREnginev2/od;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lcom/sunia/HTREnginev2/d0n;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/d0n;-><init>()V

    iget-object v0, p1, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sunia/HTREnginev2/d0n;->a:[I

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/sunia/HTREnginev2/d0n;->a:[I

    aput v3, v4, v2

    iget-object v4, p1, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/sunia/HTREnginev2/sog;->e:[J

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/sunia/HTREnginev2/od;->b:[J

    array-length v2, v2

    new-array v3, v2, [J

    iput-object v3, p0, Lcom/sunia/HTREnginev2/d0n;->b:[J

    const-wide/16 v3, 0x0

    move v5, v1

    :goto_2
    if-ge v5, v2, :cond_2

    iget-object v6, p0, Lcom/sunia/HTREnginev2/d0n;->b:[J

    aput-wide v3, v6, v5

    iget-object v6, p1, Lcom/sunia/HTREnginev2/od;->b:[J

    aget-wide v6, v6, v5

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sunia/HTREnginev2/d0n;->c:[I

    iget-object v0, p1, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sunia/HTREnginev2/d0n;->d:[I

    move v0, v1

    move v2, v0

    move v3, v2

    :goto_3
    iget-object v4, p1, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v5, v4

    if-ge v0, v5, :cond_a

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/d0n;->d:[I

    const/4 v5, -0x1

    aput v5, v4, v0

    goto :goto_7

    :cond_3
    if-nez v2, :cond_7

    :goto_4
    iget-object v4, p1, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/sunia/HTREnginev2/d0n;->c:[I

    aput v0, v5, v3

    aget-object v5, v4, v3

    iget v5, v5, Lcom/sunia/HTREnginev2/sog;->i:I

    if-lez v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    array-length v4, v4

    if-ge v3, v4, :cond_6

    goto :goto_6

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Too few folders in archive"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_6
    iget-object v4, p0, Lcom/sunia/HTREnginev2/d0n;->d:[I

    aput v3, v4, v0

    iget-object v4, p1, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p1, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/sunia/HTREnginev2/sog;->i:I

    if-lt v2, v4, :cond_9

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iput-object p0, p1, Lcom/sunia/HTREnginev2/od;->h:Lcom/sunia/HTREnginev2/d0n;

    return-void
.end method

.method public final g0(Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 2

    const-string v0, "unknown archive"

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "~"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e0(IZ)V

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/od;->h:Lcom/sunia/HTREnginev2/d0n;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/d0n;->d:[I

    aget p1, p1, v0

    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->i:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j0()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getUseDefaultNameForUnnamedEntries()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e0(IZ)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->n:J

    return-object v0
.end method

.method public getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$b;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    return-object v0
.end method

.method public final j0()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    sget-object v0, Lorg/apache/commons/compress/utils/ByteUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const-wide v4, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {v0, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m:J

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    :cond_3
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n0()Z
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    instance-of v2, v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->getBytesRemaining()J

    move-result-wide v4

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    instance-of v4, v0, Lorg/apache/commons/compress/utils/BoundedInputStream;

    if-eqz v4, :cond_1

    check-cast v0, Lorg/apache/commons/compress/utils/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BoundedInputStream;->getBytesRemaining()J

    move-result-wide v4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v6

    cmp-long p0, v4, v6

    if-eqz p0, :cond_2

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final o0(Lcom/sunia/HTREnginev2/vxm;[BZ)Lcom/sunia/HTREnginev2/od;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lcom/sunia/HTREnginev2/vxm;->b:J

    const-string v2, "nextHeaderSize"

    invoke-static {v2, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    iget-wide v0, p1, Lcom/sunia/HTREnginev2/vxm;->b:J

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v2, 0x20

    iget-wide v4, p1, Lcom/sunia/HTREnginev2/vxm;->a:J

    add-long/2addr v4, v2

    invoke-interface {v1, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p3}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v1

    new-instance p3, Ljava/util/zip/CheckedInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v3}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {p3, v3, v4}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    int-to-long v3, v0

    invoke-virtual {p3, v3, v4}, Ljava/util/zip/CheckedInputStream;->skip(J)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    iget-wide v3, p1, Lcom/sunia/HTREnginev2/vxm;->c:J

    invoke-virtual {p3}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p1, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "NextHeader CRC-32 mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Problem computing NextHeader CRC-32"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p1, Lcom/sunia/HTREnginev2/od;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/od;-><init>()V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->w0(Ljava/nio/ByteBuffer;)V

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->t0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;[B)Ljava/nio/ByteBuffer;

    move-result-object p3

    new-instance p1, Lcom/sunia/HTREnginev2/od;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/od;-><init>()V

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_3
    const/4 p2, 0x1

    if-ne v0, p2, :cond_4

    invoke-virtual {p0, p3, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->x0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/sunia/HTREnginev2/od;->f:Lcom/sunia/HTREnginev2/b5n;

    return-object p1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Broken or unsupported archive: no Header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->s0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final r0(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int p0, v0

    new-array p0, p0, [B

    invoke-static {p1, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h0(Ljava/nio/ByteBuffer;[B)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j0()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->n:J

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j0()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->n:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->n:J

    :cond_1
    return p1
.end method

.method public final s0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p2, :cond_2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/16 v2, 0x80

    :cond_0
    and-int v4, v3, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {p0, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final t0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;[B)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$a;)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->L0(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->r(I)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->B0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V

    iget-object p1, p2, Lcom/sunia/HTREnginev2/od;->e:[Lcom/sunia/HTREnginev2/sog;

    if-eqz p1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/sunia/HTREnginev2/od;->b:[J

    if-eqz v0, :cond_4

    array-length v0, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-wide/16 v1, 0x20

    iget-wide v3, p2, Lcom/sunia/HTREnginev2/od;->a:J

    add-long/2addr v3, v1

    const-wide/16 v1, 0x0

    add-long/2addr v3, v1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    new-instance v1, Lcom/sunia/HTREnginev2/qu;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    iget-object p2, p2, Lcom/sunia/HTREnginev2/od;->b:[J

    aget-wide v3, p2, v0

    invoke-direct {v1, v2, v3, v4}, Lcom/sunia/HTREnginev2/qu;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sog;->c()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sunia/HTREnginev2/rwd;

    iget-wide v0, v6, Lcom/sunia/HTREnginev2/rwd;->b:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, v6, Lcom/sunia/HTREnginev2/rwd;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->e:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/sunia/HTREnginev2/sog;->e(Lcom/sunia/HTREnginev2/rwd;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v8

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->a(Ljava/lang/String;Ljava/io/InputStream;JLcom/sunia/HTREnginev2/rwd;[BI)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Multi input/output stream coders are not yet supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean p0, p1, Lcom/sunia/HTREnginev2/sog;->g:Z

    if-eqz p0, :cond_2

    new-instance p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sog;->d()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/sunia/HTREnginev2/sog;->h:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v3, p0

    :cond_2
    const-string p0, "unpackSize"

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sog;->d()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->I(Ljava/lang/String;J)I

    move-result p0

    invoke-static {v3, p0}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/io/InputStream;I)[B

    move-result-object p1

    array-length p2, p1

    if-lt p2, p0, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "premature end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no packed streams, can\'t read encoded header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no folders, can\'t read encoded header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g:Lcom/sunia/HTREnginev2/od;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/od;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_a

    move v1, v9

    move v8, v1

    move v10, v8

    :goto_1
    if-ge v1, v3, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    if-nez v11, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v12, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    move v13, v9

    goto :goto_3

    :cond_2
    :goto_2
    move v13, v12

    :goto_3
    invoke-virtual {v11, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v13

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_5

    iget-object v12, v2, Lcom/sunia/HTREnginev2/od;->f:Lcom/sunia/HTREnginev2/b5n;

    if-eqz v12, :cond_4

    invoke-virtual {v11, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    invoke-virtual {v11, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    iget-object v12, v2, Lcom/sunia/HTREnginev2/od;->f:Lcom/sunia/HTREnginev2/b5n;

    iget-object v12, v12, Lcom/sunia/HTREnginev2/b5n;->b:Ljava/util/BitSet;

    invoke-virtual {v12, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    iget-object v12, v2, Lcom/sunia/HTREnginev2/od;->f:Lcom/sunia/HTREnginev2/b5n;

    iget-object v12, v12, Lcom/sunia/HTREnginev2/b5n;->c:[J

    aget-wide v12, v12, v10

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    iget-object v12, v2, Lcom/sunia/HTREnginev2/od;->f:Lcom/sunia/HTREnginev2/b5n;

    iget-object v12, v12, Lcom/sunia/HTREnginev2/b5n;->a:[J

    aget-wide v12, v12, v10

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v11

    cmp-long v11, v11, v14

    if-ltz v11, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "broken archive, entry with negative size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Archive contains file with streams but no subStreamsInfo"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v6, :cond_7

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_4

    :cond_6
    move v13, v9

    goto :goto_5

    :cond_7
    :goto_4
    move v13, v12

    :goto_5
    invoke-virtual {v11, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    if-eqz v7, :cond_8

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_6

    :cond_8
    move v12, v9

    :goto_6
    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    invoke-virtual {v11, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    invoke-virtual {v11, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    add-int/lit8 v8, v8, 0x1

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/sunia/HTREnginev2/llm;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/llm;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/sunia/HTREnginev2/mlm;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/mlm;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iput-object v1, v2, Lcom/sunia/HTREnginev2/od;->g:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f0(Lcom/sunia/HTREnginev2/od;)V

    return-void

    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    const/16 v12, 0x19

    if-eq v8, v12, :cond_12

    packed-switch v8, :pswitch_data_0

    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    goto/16 :goto_d

    :pswitch_0
    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :goto_8
    if-ge v9, v3, :cond_13

    invoke-virtual {v0, v4, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g0(Ljava/util/Map;I)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k0(Ljava/nio/ByteBuffer;)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :pswitch_1
    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :goto_9
    if-ge v9, v3, :cond_13

    invoke-virtual {v0, v4, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g0(Ljava/util/Map;I)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l0(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :pswitch_2
    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :goto_a
    if-ge v9, v3, :cond_13

    invoke-virtual {v0, v4, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g0(Ljava/util/Map;I)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l0(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :pswitch_3
    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :goto_b
    if-ge v9, v3, :cond_13

    invoke-virtual {v0, v4, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g0(Ljava/util/Map;I)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l0(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    long-to-int v8, v10

    new-array v10, v8, [B

    invoke-static {v1, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h0(Ljava/nio/ByteBuffer;[B)V

    move v11, v9

    move v12, v11

    :goto_c
    if-ge v9, v8, :cond_10

    aget-byte v13, v10, v9

    if-nez v13, :cond_f

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, v10, v13

    if-nez v13, :cond_f

    invoke-virtual {v0, v4, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->g0(Ljava/util/Map;I)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    new-instance v14, Ljava/lang/String;

    sub-int v15, v9, v11

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v14, v10, v11, v15, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    add-int/lit8 v2, v9, 0x2

    add-int/lit8 v12, v12, 0x1

    move v11, v2

    :cond_f
    add-int/lit8 v9, v9, 0x2

    move-object/from16 v2, p2

    goto :goto_c

    :cond_10
    if-ne v11, v8, :cond_11

    if-ne v12, v3, :cond_11

    goto :goto_d

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error parsing file names"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->s0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v7, v2

    goto :goto_d

    :pswitch_6
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->s0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v6, v2

    goto :goto_d

    :pswitch_7
    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->s0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v5, v2

    goto :goto_d

    :cond_12
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->O0(Ljava/nio/ByteBuffer;J)J

    :cond_13
    :goto_d
    move-object/from16 v2, p2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v0(Ljava/nio/ByteBuffer;)Lcom/sunia/HTREnginev2/sog;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lcom/sunia/HTREnginev2/sog;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/sog;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [Lcom/sunia/HTREnginev2/rwd;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    move v9, v6

    :goto_0
    const-wide/16 v10, 0x1

    if-ge v9, v2, :cond_6

    new-instance v12, Lcom/sunia/HTREnginev2/rwd;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/rwd;-><init>()V

    aput-object v12, v3, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v12

    and-int/lit8 v13, v12, 0xf

    and-int/lit8 v14, v12, 0x10

    const/4 v15, 0x1

    if-nez v14, :cond_0

    move v14, v15

    goto :goto_1

    :cond_0
    move v14, v6

    :goto_1
    and-int/lit8 v16, v12, 0x20

    if-eqz v16, :cond_1

    move/from16 v16, v15

    goto :goto_2

    :cond_1
    move/from16 v16, v6

    :goto_2
    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    move v15, v6

    :goto_3
    aget-object v12, v3, v9

    new-array v13, v13, [B

    iput-object v13, v12, Lcom/sunia/HTREnginev2/rwd;->a:[B

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h0(Ljava/nio/ByteBuffer;[B)V

    if-eqz v14, :cond_3

    aget-object v12, v3, v9

    iput-wide v10, v12, Lcom/sunia/HTREnginev2/rwd;->b:J

    iput-wide v10, v12, Lcom/sunia/HTREnginev2/rwd;->c:J

    goto :goto_4

    :cond_3
    aget-object v10, v3, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/sunia/HTREnginev2/rwd;->b:J

    aget-object v10, v3, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/sunia/HTREnginev2/rwd;->c:J

    :goto_4
    aget-object v10, v3, v9

    iget-wide v11, v10, Lcom/sunia/HTREnginev2/rwd;->b:J

    add-long/2addr v4, v11

    iget-wide v10, v10, Lcom/sunia/HTREnginev2/rwd;->c:J

    add-long/2addr v7, v10

    if-eqz v16, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    aget-object v12, v3, v9

    long-to-int v10, v10

    new-array v10, v10, [B

    iput-object v10, v12, Lcom/sunia/HTREnginev2/rwd;->d:[B

    invoke-static {v0, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->h0(Ljava/nio/ByteBuffer;[B)V

    :cond_4
    if-nez v15, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object v3, v1, Lcom/sunia/HTREnginev2/sog;->a:[Lcom/sunia/HTREnginev2/rwd;

    iput-wide v4, v1, Lcom/sunia/HTREnginev2/sog;->b:J

    iput-wide v7, v1, Lcom/sunia/HTREnginev2/sog;->c:J

    sub-long/2addr v7, v10

    long-to-int v2, v7

    new-array v3, v2, [Lcom/sunia/HTREnginev2/br;

    move v9, v6

    :goto_5
    if-ge v9, v2, :cond_7

    new-instance v12, Lcom/sunia/HTREnginev2/br;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/br;-><init>()V

    aput-object v12, v3, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/sunia/HTREnginev2/br;->a:J

    aget-object v12, v3, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/sunia/HTREnginev2/br;->b:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    iput-object v3, v1, Lcom/sunia/HTREnginev2/sog;->d:[Lcom/sunia/HTREnginev2/br;

    sub-long v2, v4, v7

    long-to-int v7, v2

    new-array v8, v7, [J

    cmp-long v2, v2, v10

    if-nez v2, :cond_a

    move v0, v6

    :goto_6
    long-to-int v2, v4

    if-ge v0, v2, :cond_9

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/sog;->a(I)I

    move-result v2

    if-gez v2, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    int-to-long v2, v0

    aput-wide v2, v8, v6

    goto :goto_9

    :cond_a
    :goto_8
    if-ge v6, v7, :cond_b

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    iput-object v8, v1, Lcom/sunia/HTREnginev2/sog;->e:[J

    return-object v1
.end method

.method public final w0(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final x0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->G0(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->r(I)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->r0(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->B0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->u0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Additional streams unsupported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y0([B)Lcom/sunia/HTREnginev2/od;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->w0(Ljava/nio/ByteBuffer;)V

    const/4 v1, 0x6

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->r:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->w0(Ljava/nio/ByteBuffer;)V

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->f:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v6, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    :cond_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->A0(J)Lcom/sunia/HTREnginev2/vxm;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->o0(Lcom/sunia/HTREnginev2/vxm;[BZ)Lcom/sunia/HTREnginev2/od;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->l:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getTryToRecoverBrokenArchives()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->Q0([B)Lcom/sunia/HTREnginev2/od;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "archive seems to be invalid.\nYou may want to retry and enable the tryToRecoverBrokenArchives if the archive could be a multi volume archive that has been closed prematurely."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Unsupported 7z version (%d,%d)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Bad 7z signature"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z0(Ljava/nio/ByteBuffer;Lcom/sunia/HTREnginev2/od;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/sunia/HTREnginev2/od;->a:J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    new-array v1, v0, [J

    iput-object v1, p2, Lcom/sunia/HTREnginev2/od;->b:[J

    move v1, v3

    :goto_0
    iget-object v2, p2, Lcom/sunia/HTREnginev2/od;->b:[J

    array-length v4, v2

    if-ge v1, v4, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->D0(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    move-result v1

    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->q0(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, p2, Lcom/sunia/HTREnginev2/od;->c:Ljava/util/BitSet;

    new-array p0, v0, [J

    iput-object p0, p2, Lcom/sunia/HTREnginev2/od;->d:[J

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object p0, p2, Lcom/sunia/HTREnginev2/od;->c:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p2, Lcom/sunia/HTREnginev2/od;->d:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->k0(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v1, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    aput-wide v1, p0, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->m0(Ljava/nio/ByteBuffer;)I

    :cond_4
    return-void
.end method
