.class public Lorg/apache/commons/compress/compressors/deflate64/a$e;
.super Lorg/apache/commons/compress/compressors/deflate64/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field public final b:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public final c:Lorg/apache/commons/compress/compressors/deflate64/a$b;

.field public final d:Lorg/apache/commons/compress/compressors/deflate64/a$b;

.field public e:I

.field public f:[B

.field public g:I

.field public final synthetic h:Lorg/apache/commons/compress/compressors/deflate64/a;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/a;Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;[I[I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->h:Lorg/apache/commons/compress/compressors/deflate64/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/deflate64/a$c;-><init>(Lorg/apache/commons/compress/compressors/deflate64/a$a;)V

    sget-object p1, Lorg/apache/commons/compress/utils/ByteUtils;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->f:[B

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->b:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    invoke-static {p3}, Lorg/apache/commons/compress/compressors/deflate64/a;->e0([I)Lorg/apache/commons/compress/compressors/deflate64/a$b;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->c:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    invoke-static {p4}, Lorg/apache/commons/compress/compressors/deflate64/a;->e0([I)Lorg/apache/commons/compress/compressors/deflate64/a$b;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->d:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->g:I

    iget p0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->e:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->a:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public c([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/deflate64/a$e;->f([BII)I

    move-result p0

    return p0
.end method

.method public d()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->a:Z

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->b:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    :goto_0
    return-object p0
.end method

.method public final e([BII)I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->g:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->e:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->f:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->e:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->e:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method public final f([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->a:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/deflate64/a$e;->e([BII)I

    move-result v0

    :goto_0
    if-ge v0, p3, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->h:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/deflate64/a;->w(Lorg/apache/commons/compress/compressors/deflate64/a;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->c:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/a;->f0(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/a$b;)I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, p2

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->h:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/deflate64/a;->I(Lorg/apache/commons/compress/compressors/deflate64/a;)Lorg/apache/commons/compress/compressors/deflate64/a$d;

    move-result-object v3

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/compressors/deflate64/a$d;->a(B)B

    move-result v1

    aput-byte v1, p1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_3

    invoke-static {}, Lorg/apache/commons/compress/compressors/deflate64/a;->f()[S

    move-result-object v2

    add-int/lit16 v1, v1, -0x101

    aget-short v1, v2, v1

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->h:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v3, v1}, Lorg/apache/commons/compress/compressors/deflate64/a;->H(Lorg/apache/commons/compress/compressors/deflate64/a;I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->h:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v2}, Lorg/apache/commons/compress/compressors/deflate64/a;->w(Lorg/apache/commons/compress/compressors/deflate64/a;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->d:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    invoke-static {v2, v3}, Lorg/apache/commons/compress/compressors/deflate64/a;->f0(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/a$b;)I

    move-result v2

    invoke-static {}, Lorg/apache/commons/compress/compressors/deflate64/a;->j()[I

    move-result-object v3

    aget v2, v3, v2

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->h:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v4, v2}, Lorg/apache/commons/compress/compressors/deflate64/a;->H(Lorg/apache/commons/compress/compressors/deflate64/a;I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->f:[B

    array-length v3, v3

    if-ge v3, v1, :cond_2

    new-array v3, v1, [B

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->f:[B

    :cond_2
    iput v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->g:I

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->e:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->h:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/deflate64/a;->I(Lorg/apache/commons/compress/compressors/deflate64/a;)Lorg/apache/commons/compress/compressors/deflate64/a$d;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->f:[B

    invoke-virtual {v3, v2, v1, v4}, Lorg/apache/commons/compress/compressors/deflate64/a$d;->d(II[B)V

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/a$e;->e([BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$e;->a:Z

    :cond_4
    return v0
.end method
