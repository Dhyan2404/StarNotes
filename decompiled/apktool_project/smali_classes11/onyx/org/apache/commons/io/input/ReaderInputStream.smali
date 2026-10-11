.class public Lonyx/org/apache/commons/io/input/ReaderInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;
    }
.end annotation


# instance fields
.field public final e:Ljava/io/Reader;

.field public final f:Ljava/nio/charset/CharsetEncoder;

.field public final g:Ljava/nio/CharBuffer;

.field public final h:Ljava/nio/ByteBuffer;

.field public i:Ljava/nio/charset/CoderResult;

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-static {p2}, Lonyx/org/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p2}, Lonyx/org/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 4
    invoke-virtual {p2, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 5
    invoke-virtual {p2, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 9
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->e:Ljava/io/Reader;

    .line 10
    invoke-static {p2}, Lonyx/org/apache/commons/io/charset/CharsetEncoders;->toCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->f:Ljava/nio/charset/CharsetEncoder;

    .line 11
    invoke-static {p1, p3}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j(Ljava/nio/charset/CharsetEncoder;I)I

    move-result p1

    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->g:Ljava/nio/CharBuffer;

    .line 12
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/16 p1, 0x80

    .line 13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public static I(Ljava/nio/charset/CharsetEncoder;)F
    .locals 1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static M(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
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

.method public static builder()Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic f(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->M(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/nio/charset/CharsetEncoder;I)I
    .locals 2

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->I(Ljava/nio/charset/CharsetEncoder;)F

    move-result v0

    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    return p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Buffer size %,d must be at least %s for a CharsetEncoder %s."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public H()Ljava/nio/charset/CharsetEncoder;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->f:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->e:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
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
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->w()V

    .line 4
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

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

    invoke-virtual {p0, p1, v1, v0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "array"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_5

    if-ltz p2, :cond_5

    add-int v0, p2, p3

    .line 7
    array-length v1, p1

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_3

    .line 8
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10
    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 11
    :cond_1
    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->w()V

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 13
    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j:Z

    if-eqz p0, :cond_4

    const/4 v0, -0x1

    :cond_4
    return v0

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array size="

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

.method public final w()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->i:Ljava/nio/charset/CoderResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->e:Ljava/io/Reader;

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    iget-object v3, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->g:Ljava/nio/CharBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    :cond_3
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->g:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    iget-boolean v3, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j:Z

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->i:Ljava/nio/charset/CoderResult;

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->i:Ljava/nio/charset/CoderResult;

    :cond_4
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->i:Ljava/nio/charset/CoderResult;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->i:Ljava/nio/charset/CoderResult;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_5
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
