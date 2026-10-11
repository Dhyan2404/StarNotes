.class public Lonyx/org/apache/commons/io/input/CharSequenceInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;
    }
.end annotation


# static fields
.field public static final j:I = -0x1


# instance fields
.field public final e:Ljava/nio/ByteBuffer;

.field public f:I

.field public final g:Ljava/nio/CharBuffer;

.field public h:I

.field public final i:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 5
    iput-object p3, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->i:Ljava/nio/charset/CharsetEncoder;

    .line 6
    invoke-static {p3, p2}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j(Ljava/nio/charset/CharsetEncoder;I)I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->h:I

    .line 10
    iput p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->f:I

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->j()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    iget-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    iget-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;Lonyx/org/apache/commons/io/input/CharSequenceInputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-static {p2}, Lonyx/org/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p2}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->H(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public static H(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    .locals 1

    invoke-static {p0}, Lonyx/org/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic f(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->H(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->i:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->h:I

    iget-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->f:I

    iget-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    iget-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->j()V

    .line 4
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "array"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 7
    array-length v1, p1

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 8
    :cond_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 9
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11
    iget-object v3, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->j()V

    .line 13
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    if-nez v0, :cond_4

    .line 14
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    return v2

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->h:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->i:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v3, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->h:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->j()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v3, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->h:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->e:Ljava/nio/ByteBuffer;

    iget v3, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->f:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v2, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->h:I

    iput v2, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->f:I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CharBuffer position: actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->read()I

    const-wide/16 v4, 0x1

    sub-long/2addr p1, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public w()Ljava/nio/charset/CharsetEncoder;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->i:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method
