.class public Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;
    }
.end annotation


# static fields
.field public static final K:[I

.field public static final L:I = 0x7

.field public static final M:I = 0x96


# instance fields
.field public final A:Z

.field public final B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public final J:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public final s:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd0

    const/16 v1, 0xd

    const/16 v2, 0xca

    const/16 v3, 0xfe

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->K:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->s:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->t:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->A:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->B:Z

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;-><init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$a;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->J:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;

    return-void
.end method


# virtual methods
.method public addMajorVersion(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->J:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->a(I)V

    return-void
.end method

.method public appendBandCodingSpecifier(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->s:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public getArchive_modtime()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->x:I

    return p0
.end method

.method public getDefaultMajorVersion()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->J:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->b()I

    move-result p0

    return p0
.end method

.method public have_all_code_flags()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->t:Z

    return p0
.end method

.method public have_class_flags_hi()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->D:Z

    return p0
.end method

.method public have_code_flags_hi()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->G:Z

    return p0
.end method

.method public have_field_flags_hi()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->E:Z

    return p0
.end method

.method public have_file_modtime()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public have_file_options()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public have_file_size_hi()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->C:Z

    return p0
.end method

.method public have_method_flags_hi()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->F:Z

    return p0
.end method

.method public final l()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->r:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->s:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->g:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->h:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->i:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->j:I

    if-lez v0, :cond_3

    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_3
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->t:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_4
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->y:I

    if-lez v0, :cond_5

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_5
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->z:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_6
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit8 v0, v0, 0x40

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->C:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_7
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->D:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_8
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->E:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_9
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->F:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_a
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->G:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    :cond_b
    return-void
.end method

.method public final m(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->u:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->v:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->w:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->x:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->y:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public final n(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->s:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->r:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public final o(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->J:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->b()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->H:I

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->I:I

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final p(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->f:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->g:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->h:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->i:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->j:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->k:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->l:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->m:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->n:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->o:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->p:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->q:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->K:[I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar([ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    const/16 v2, 0x96

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->l()V

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->e:I

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->m(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->n(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->p(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->o(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->s:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->s:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeScalar([ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public setAttribute_definition_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->r:I

    return-void
.end method

.method public setClass_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->I:I

    return-void
.end method

.method public setCp_Class_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->l:I

    return-void
.end method

.method public setCp_Descr_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->n:I

    return-void
.end method

.method public setCp_Double_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->j:I

    return-void
.end method

.method public setCp_Field_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->o:I

    return-void
.end method

.method public setCp_Float_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->h:I

    return-void
.end method

.method public setCp_Imethod_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->q:I

    return-void
.end method

.method public setCp_Int_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->g:I

    return-void
.end method

.method public setCp_Long_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->i:I

    return-void
.end method

.method public setCp_Method_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->p:I

    return-void
.end method

.method public setCp_Signature_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->m:I

    return-void
.end method

.method public setCp_String_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->k:I

    return-void
.end method

.method public setCp_Utf8_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->f:I

    return-void
.end method

.method public setDeflate_hint(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->z:Z

    return-void
.end method

.method public setFile_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->y:I

    return-void
.end method

.method public setHave_all_code_flags(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->t:Z

    return-void
.end method

.method public setHave_class_flags_hi(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->D:Z

    return-void
.end method

.method public setHave_code_flags_hi(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->G:Z

    return-void
.end method

.method public setHave_field_flags_hi(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->E:Z

    return-void
.end method

.method public setHave_method_flags_hi(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->F:Z

    return-void
.end method

.method public setIc_count(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->H:I

    return-void
.end method
