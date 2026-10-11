.class public final Lcom/sunia/HTREnginev2/rui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/enc/Encoder;


# static fields
.field public static final k:I = 0x100

.field public static final l:I = 0x101

.field public static final m:I = 0x9

.field public static final n:I = 0xc

.field public static final o:I = 0x1000


# instance fields
.field public final a:[S

.field public final b:[S

.field public final c:[S

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/sunia/HTREnginev2/rui;->a:[S

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/sunia/HTREnginev2/rui;->b:[S

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rui;->c:[S

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->e:I

    const/16 v1, 0x102

    iput v1, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/rui;->d(I)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->h:I

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->i:I

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/rui;->j:J

    return-void
.end method

.method public static a(I)I
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/rui;->d(I)I

    move-result p0

    return p0
.end method

.method public static d(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public b(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v1}, Lcom/sunia/HTREnginev2/rui;->f(Ljava/io/OutputStream;I)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rui;->a:[S

    iget v3, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    aget-short v4, v2, v3

    if-lez v4, :cond_5

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rui;->c:[S

    aget-short v2, v2, v4

    if-ne v2, v1, :cond_2

    iput v4, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/rui;->b:[S

    aget-short v3, v2, v4

    if-lez v3, :cond_4

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rui;->c:[S

    aget-short v2, v2, v3

    if-ne v2, v1, :cond_3

    iput v3, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    int-to-short v5, v3

    aput-short v5, v2, v4

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rui;->c:[S

    int-to-short v4, v1

    aput-short v4, v2, v3

    iget v2, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    invoke-virtual {p0, p1, v2}, Lcom/sunia/HTREnginev2/rui;->f(Ljava/io/OutputStream;I)V

    iput v1, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    iget v1, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/rui;->c(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    int-to-short v5, v4

    aput-short v5, v2, v3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rui;->c:[S

    int-to-short v5, v1

    aput-short v5, v2, v4

    invoke-virtual {p0, p1, v3}, Lcom/sunia/HTREnginev2/rui;->f(Ljava/io/OutputStream;I)V

    iput v1, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    iget v1, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/rui;->c(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_6
    iget-wide p1, p0, Lcom/sunia/HTREnginev2/rui;->j:J

    int-to-long v0, v0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/rui;->j:J

    return-void
.end method

.method public final c(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    iget v1, p0, Lcom/sunia/HTREnginev2/rui;->g:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sunia/HTREnginev2/rui;->e:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/rui;->f(Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rui;->e()V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->e:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/rui;->d(I)I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/rui;->g:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rui;->a:[S

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rui;->b:[S

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->e:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/rui;->d(I)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->g:I

    const/16 v0, 0x102

    iput v0, p0, Lcom/sunia/HTREnginev2/rui;->f:I

    return-void
.end method

.method public encode(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/rui;->b(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/rui;->j:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    iget p2, p0, Lcom/sunia/HTREnginev2/rui;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/rui;->f(Ljava/io/OutputStream;I)V

    const/16 p2, 0x101

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/rui;->f(Ljava/io/OutputStream;I)V

    iget p2, p0, Lcom/sunia/HTREnginev2/rui;->i:I

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/rui;->f(Ljava/io/OutputStream;I)V

    :cond_0
    return-void
.end method

.method public final f(Ljava/io/OutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/rui;->h:I

    iget v1, p0, Lcom/sunia/HTREnginev2/rui;->e:I

    shl-int/2addr v0, v1

    iget v2, p0, Lcom/sunia/HTREnginev2/rui;->g:I

    and-int/2addr p2, v2

    or-int/2addr p2, v0

    iput p2, p0, Lcom/sunia/HTREnginev2/rui;->h:I

    iget p2, p0, Lcom/sunia/HTREnginev2/rui;->i:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/sunia/HTREnginev2/rui;->i:I

    :goto_0
    iget p2, p0, Lcom/sunia/HTREnginev2/rui;->i:I

    const/16 v0, 0x8

    if-lt p2, v0, :cond_0

    iget v1, p0, Lcom/sunia/HTREnginev2/rui;->h:I

    add-int/lit8 p2, p2, -0x8

    shr-int p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    iget p2, p0, Lcom/sunia/HTREnginev2/rui;->i:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/sunia/HTREnginev2/rui;->i:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sunia/HTREnginev2/rui;->h:I

    invoke-static {p2}, Lcom/sunia/HTREnginev2/rui;->a(I)I

    move-result p2

    and-int/2addr p1, p2

    iput p1, p0, Lcom/sunia/HTREnginev2/rui;->h:I

    return-void
.end method
