.class public final Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream$Builder;
    }
.end annotation


# static fields
.field public static final j:I = 0x40000

.field public static final k:Ljava/nio/ByteBuffer;


# instance fields
.field public final e:I

.field public final f:Ljava/nio/channels/FileChannel;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z

.field public i:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->k:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    sget-object v0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    .line 4
    iput p2, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->e:I

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/nio/file/OpenOption;

    const/4 v0, 0x0

    .line 5
    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->f:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/file/Path;ILonyx/org/apache/commons/io/input/MemoryMappedFileInputStream$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;-><init>(Ljava/nio/file/Path;I)V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->e:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->f()V

    iget-object v4, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->f:Ljava/nio/channels/FileChannel;

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v6, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->i:J

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->i:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->i:J

    goto :goto_0

    :cond_0
    sget-object v0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->h:Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/sv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/sv;->a(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->h:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->j()V

    .line 2
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->H()V

    .line 4
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->j()V

    .line 7
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->H()V

    .line 9
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 10
    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 11
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->j()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1

    :cond_1
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->i:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr p1, v4

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr v2, p1

    iget-wide p1, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->i:J

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v2, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->i:J

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->H()V

    return-wide v2
.end method

.method public w()I
    .locals 0

    iget p0, p0, Lonyx/org/apache/commons/io/input/MemoryMappedFileInputStream;->e:I

    return p0
.end method
