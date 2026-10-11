.class public Lcom/sunia/HTREnginev2/fqi;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/nio/ByteBuffer;

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:[B

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->e:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/fqi;->g:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/sunia/HTREnginev2/fqi;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/fqi;->g:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/fqi;->h:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fqi;->f()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/sunia/HTREnginev2/fqi;->h:I

    iput v0, p0, Lcom/sunia/HTREnginev2/fqi;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/fqi;->m:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 4

    iget v0, p0, Lcom/sunia/HTREnginev2/fqi;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunia/HTREnginev2/fqi;->h:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/fqi;->i:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/fqi;->j:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->k:[B

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/fqi;->l:I

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/fqi;->j:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/dun;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/fqi;->m:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->k:[B

    :goto_0
    return v1
.end method

.method public final j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberOfBytesRead"
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/fqi;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sunia/HTREnginev2/fqi;->i:I

    iget-object p1, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fqi;->f()Z

    :cond_0
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sunia/HTREnginev2/fqi;->h:I

    iget v1, p0, Lcom/sunia/HTREnginev2/fqi;->g:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/fqi;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->k:[B

    iget v2, p0, Lcom/sunia/HTREnginev2/fqi;->i:I

    iget v3, p0, Lcom/sunia/HTREnginev2/fqi;->l:I

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 4
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/fqi;->j(I)V

    return v0

    .line 5
    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/fqi;->i:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/fqi;->m:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/sunia/HTREnginev2/dun;->A(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 6
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/fqi;->j(I)V

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget v0, p0, Lcom/sunia/HTREnginev2/fqi;->h:I

    iget v1, p0, Lcom/sunia/HTREnginev2/fqi;->g:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/sunia/HTREnginev2/fqi;->i:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    move p3, v0

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/fqi;->j:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->k:[B

    iget v2, p0, Lcom/sunia/HTREnginev2/fqi;->l:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/fqi;->j(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sunia/HTREnginev2/fqi;->i:I

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    .line 14
    iget-object v1, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 15
    iget-object p1, p0, Lcom/sunia/HTREnginev2/fqi;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    .line 16
    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/fqi;->j(I)V

    :goto_0
    return p3
.end method
