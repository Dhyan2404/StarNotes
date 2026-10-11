.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;
    }
.end annotation


# static fields
.field public static final w:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

.field public static final x:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

.field public static final y:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

.field public static final z:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;


# instance fields
.field public e:I

.field public final f:[B

.field public final g:I

.field public h:I

.field public i:I

.field public j:[I

.field public k:[I

.field public l:I

.field public m:I

.field public n:I

.field public o:B

.field public p:B

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/io/OutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x40

    new-array v1, v0, [Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    sput-object v1, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->w:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    const/16 v1, 0x28

    new-array v2, v1, [Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    sput-object v2, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->x:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/sunia/HTREnginev2/z00;->w:[[S

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x4

    move v6, v2

    :goto_1
    sget-object v7, Lcom/sunia/HTREnginev2/z00;->w:[[S

    aget-object v7, v7, v3

    array-length v8, v7

    if-ge v6, v8, :cond_1

    sget-object v8, Lcom/sunia/HTREnginev2/z00;->x:[[S

    aget-object v8, v8, v3

    aget-short v8, v8, v6

    aget-short v7, v7, v6

    if-ge v8, v0, :cond_0

    sget-object v9, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->w:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    new-instance v10, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    invoke-direct {v10, v7, v4, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;-><init>(IILcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$a;)V

    aput-object v10, v9, v8

    goto :goto_2

    :cond_0
    sget-object v9, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->x:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    div-int/lit8 v8, v8, 0x40

    add-int/lit8 v8, v8, -0x1

    new-instance v10, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    invoke-direct {v10, v7, v4, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;-><init>(IILcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$a;)V

    aput-object v10, v9, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array v3, v0, [Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    sput-object v3, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->y:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    new-array v1, v1, [Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    sput-object v1, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->z:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    move v1, v2

    :goto_3
    sget-object v3, Lcom/sunia/HTREnginev2/z00;->u:[[S

    array-length v3, v3

    if-ge v1, v3, :cond_5

    add-int/lit8 v3, v1, 0x2

    move v4, v2

    :goto_4
    sget-object v6, Lcom/sunia/HTREnginev2/z00;->u:[[S

    aget-object v6, v6, v1

    array-length v7, v6

    if-ge v4, v7, :cond_4

    sget-object v7, Lcom/sunia/HTREnginev2/z00;->v:[[S

    aget-object v7, v7, v1

    aget-short v7, v7, v4

    aget-short v6, v6, v4

    if-ge v7, v0, :cond_3

    sget-object v8, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->y:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    new-instance v9, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    invoke-direct {v9, v6, v3, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;-><init>(IILcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$a;)V

    aput-object v9, v8, v7

    goto :goto_5

    :cond_3
    sget-object v8, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->z:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    div-int/lit8 v7, v7, 0x40

    add-int/lit8 v7, v7, -0x1

    new-instance v9, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    invoke-direct {v9, v6, v3, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;-><init>(IILcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$a;)V

    aput-object v9, v8, v7

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IIIIJ)V
    .locals 5

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->e:I

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->l:I

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->m:I

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->n:I

    iput-byte v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->o:B

    iput-byte v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->p:B

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->v:Ljava/io/OutputStream;

    iput p4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->q:I

    iput p2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->h:I

    iput p3, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i:I

    iput p5, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->r:I

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->k:[I

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j:[I

    const/4 p1, 0x3

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x0

    const/4 p3, 0x1

    if-eq p4, p1, :cond_2

    const/4 p1, 0x4

    if-eq p4, p1, :cond_0

    goto :goto_2

    :cond_0
    and-long p4, p6, v1

    cmp-long p1, p4, v3

    if-eqz p1, :cond_1

    move v0, p3

    :cond_1
    iput-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->u:Z

    goto :goto_2

    :cond_2
    const-wide/16 p4, 0x1

    and-long/2addr p4, p6

    cmp-long p1, p4, v3

    if-eqz p1, :cond_3

    move p1, p3

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->s:Z

    const-wide/16 p4, 0x4

    and-long/2addr p4, p6

    cmp-long p1, p4, v3

    if-eqz p1, :cond_4

    move p1, p3

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->t:Z

    and-long p4, p6, v1

    cmp-long p1, p4, v3

    if-eqz p1, :cond_5

    move v0, p3

    :cond_5
    iput-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->u:Z

    :goto_2
    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->g:I

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->f:[B

    iget-boolean p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->u:Z

    xor-int/lit8 p1, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "CCITT GROUP 3/4 OPTION UNCOMPRESSED is not supported"

    invoke-static {p1, p0, p2}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final H()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->l:I

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->k:[I

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j:[I

    iput-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->k:[I

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j:[I

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->m:I

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->m:I

    move v2, v0

    move v3, v1

    :goto_0
    iget v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->h:I

    if-ge v2, v4, :cond_2

    div-int/lit8 v4, v2, 0x8

    rem-int/lit8 v5, v2, 0x8

    iget-object v6, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->f:[B

    aget-byte v4, v6, v4

    rsub-int/lit8 v5, v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j:[I

    iget v5, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->m:I

    aput v2, v4, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->m:I

    xor-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->q:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->e0()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->M()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->I()V

    :goto_2
    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->l:I

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->q:I

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j0()V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j0()V

    :cond_6
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->f0()V

    :cond_7
    return-void
.end method

.method public final I()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j()V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->f0()V

    return-void
.end method

.method public final M()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j0()V

    iget-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->s:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->n:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->w()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j()V

    :goto_0
    iget-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->t:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->f0()V

    :cond_2
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->v:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final e0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->w()V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->o:B

    iput-byte v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->p:B

    return-void
.end method

.method public final f0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->p:B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->v:Ljava/io/OutputStream;

    iget-byte v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->o:B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->f()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->v:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final g0(IZ)[I
    .locals 6

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->h:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->m:I

    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->j:[I

    aget v5, v4, v2

    if-lt p1, v5, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aput v5, v0, v1

    const/4 p0, 0x1

    add-int/2addr v2, p0

    if-ge v2, v3, :cond_2

    aget p1, v4, v2

    aput p1, v0, p0

    :cond_2
    return-object v0
.end method

.method public final h0(IZ)[I
    .locals 5

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->h:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    :goto_0
    iget v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->n:I

    if-ge p2, v2, :cond_2

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->k:[I

    aget v4, v3, p2

    if-gt v4, p1, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    aput v4, v0, p0

    add-int/2addr p2, v1

    if-ge p2, v2, :cond_2

    aget p0, v3, p2

    aput p0, v0, v1

    :cond_2
    return-object v0
.end method

.method public final i0(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_5

    sub-int v2, p2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shr-int v2, p1, v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    iget v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->r:I

    const/16 v5, 0x8

    if-ne v4, v3, :cond_2

    iget-byte v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->o:B

    if-eqz v2, :cond_1

    iget-byte v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->p:B

    rem-int/2addr v2, v5

    rsub-int/lit8 v2, v2, 0x7

    shl-int v2, v3, v2

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    or-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->o:B

    goto :goto_4

    :cond_2
    iget-byte v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->o:B

    if-eqz v2, :cond_3

    iget-byte v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->p:B

    rem-int/2addr v2, v5

    shl-int v2, v3, v2

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    or-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->o:B

    :goto_4
    iget-byte v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->p:B

    add-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->p:B

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->v:Ljava/io/OutputStream;

    iget-byte v3, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->o:B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->f()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->h:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->g0(IZ)[I

    move-result-object v3

    aget v3, v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->k0(IZ)V

    add-int/2addr v2, v3

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    iget-byte v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->p:B

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    return-void
.end method

.method public final k0(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    div-int/lit8 v0, p1, 0x40

    if-eqz p2, :cond_0

    sget-object v1, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->x:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->z:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    :goto_0
    if-lez v0, :cond_2

    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    iget v2, v2, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;->a:I

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    iget v3, v3, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;->b:I

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    array-length v2, v1

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    iget v2, v0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;->a:I

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;->b:I

    invoke-virtual {p0, v2, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    sget-object p2, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->w:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    rem-int/lit8 p1, p1, 0x40

    aget-object p1, p2, p1

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->y:[Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;

    rem-int/lit8 p1, p1, 0x40

    aget-object p1, p2, p1

    :goto_1
    iget p2, p1, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;->a:I

    iget p1, p1, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;->b:I

    invoke-virtual {p0, p2, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    return-void
.end method

.method public final w()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->h:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->g0(IZ)[I

    move-result-object v4

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->h0(IZ)[I

    move-result-object v5

    aget v6, v4, v1

    aget v7, v5, v1

    sub-int v7, v6, v7

    aget v8, v5, v0

    if-le v6, v8, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    aget v2, v5, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    if-gt v7, v6, :cond_2

    const/4 v8, -0x3

    if-ge v7, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v8, 0x2

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v6, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v6, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v6, v6}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v0, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v8, v6}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v8, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v8, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    :goto_1
    xor-int/lit8 v3, v3, 0x1

    aget v2, v5, v1

    add-int/2addr v2, v7

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v6}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->i0(II)V

    aget v5, v4, v1

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->k0(IZ)V

    aget v2, v4, v0

    aget v5, v4, v1

    sub-int/2addr v2, v5

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->k0(IZ)V

    aget v2, v4, v0

    goto :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->f:[B

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->e:I

    iget p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->g:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->H()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;->e:I

    :cond_0
    return-void
.end method
