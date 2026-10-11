.class public final Lcom/sunia/HTREnginev2/tqi;
.super Lcom/sunia/HTREnginev2/gd;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:[B


# direct methods
.method public constructor <init>(IIIIIII[B[B)V
    .locals 2

    const v0, 0xffe0

    const-string v1, "JFIF"

    invoke-direct {p0, v0, v1, p9}, Lcom/sunia/HTREnginev2/gd;-><init>(ILjava/lang/String;[B)V

    iput p1, p0, Lcom/sunia/HTREnginev2/tqi;->d:I

    iput p2, p0, Lcom/sunia/HTREnginev2/tqi;->e:I

    iput p3, p0, Lcom/sunia/HTREnginev2/tqi;->f:I

    iput p4, p0, Lcom/sunia/HTREnginev2/tqi;->g:I

    iput p5, p0, Lcom/sunia/HTREnginev2/tqi;->h:I

    iput p6, p0, Lcom/sunia/HTREnginev2/tqi;->i:I

    iput p7, p0, Lcom/sunia/HTREnginev2/tqi;->j:I

    iput-object p8, p0, Lcom/sunia/HTREnginev2/tqi;->k:[B

    return-void
.end method

.method public static d(Ljava/nio/ByteBuffer;I)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static e(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/tqi;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    new-array v1, v0, [B

    invoke-interface {p0, v1}, Ljava/io/DataInput;->readFully([B)V

    add-int/lit8 p1, p1, -0x2

    sub-int/2addr p1, v0

    new-array v9, p1, [B

    invoke-interface {p0, v9}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/tqi;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v2, v0, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v4, 0xffff

    and-int v5, v0, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int v6, v0, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v7, v0, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v8, v0, 0xff

    mul-int v0, v7, v8

    mul-int/lit8 v0, v0, 0x3

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/tqi;->d(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    move-object v0, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/sunia/HTREnginev2/tqi;-><init>(IIIIIII[B[B)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/tqi;->i:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sunia/HTREnginev2/tqi;->j:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/sunia/HTREnginev2/tqi;->j:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "thumbnail: %dx%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "no thumbnail"

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/sunia/HTREnginev2/tqi;->f:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "(unknown unit)"

    return-object p0

    :cond_0
    const-string p0, "dpcm"

    return-object p0

    :cond_1
    const-string p0, "dpi"

    return-object p0

    :cond_2
    const-string p0, "(aspect only)"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/sunia/HTREnginev2/tqi;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/sunia/HTREnginev2/tqi;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/sunia/HTREnginev2/tqi;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/sunia/HTREnginev2/tqi;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tqi;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tqi;->f()Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JFIF v%d.%02d %dx%d %s (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
