.class public Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C:[I


# instance fields
.field public final A:Lorg/apache/commons/compress/harmony/unpack200/Segment;

.field public B:I

.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:I

.field public f:Ljava/io/InputStream;

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

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd0

    const/16 v1, 0xd

    const/16 v2, 0xca

    const/16 v3, 0xfe

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->C:[I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->A:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decode(Ljava/io/InputStream;)I

    move-result p2

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->A:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parsed #"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p0, p3, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    return p2
.end method

.method public final b(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->A:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsed #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    invoke-virtual {p3, p4, p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->z:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasArchiveFileCounts()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v1, "archive_size_hi"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const-string v3, "archive_size_lo"

    invoke-virtual {p0, v3, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setArchiveSize(J)V

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->B:I

    const-string v1, "archive_next_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setSegmentsRemaining(J)V

    const-string v1, "archive_modtime"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setArchiveModtime(J)V

    const-string v1, "file_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->x:I

    :cond_0
    return-void
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasSpecialFormats()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v1, "band_headers_size"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->g:I

    const-string v1, "attr_definition_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->j(J)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v1, "ic_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->w:I

    const-string v1, "default_class_minver"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->v:I

    const-string v1, "default_class_majver"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->u:I

    const-string v1, "class_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->h:I

    return-void
.end method

.method public final f(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v1, "cp_Utf8_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->t:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasCPNumberCounts()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cp_Int_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->o:I

    const-string v1, "cp_Float_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->m:I

    const-string v1, "cp_Long_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->p:I

    const-string v1, "cp_Double_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->k:I

    :cond_0
    const-string v1, "cp_String_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->s:I

    const-string v1, "cp_Class_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->i:I

    const-string v1, "cp_Signature_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->r:I

    const-string v1, "cp_Descr_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->j:I

    const-string v1, "cp_Field_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->l:I

    const-string v1, "cp_Method_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->q:I

    const-string v1, "cp_Imethod_count"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->n:I

    return-void
.end method

.method public final g(Ljava/io/InputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    :goto_0
    array-length v1, p2

    if-ge p0, v1, :cond_1

    array-length v1, p2

    sub-int/2addr v1, p0

    invoke-virtual {p1, p2, p0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_0

    add-int/2addr p0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Failed to read some data from input stream"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Failed to read any data from input stream"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getArchiveModtime()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->c:J

    return-wide v0
.end method

.method public getArchiveSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->d:J

    return-wide v0
.end method

.method public getArchiveSizeOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->B:I

    return p0
.end method

.method public getAttributeDefinitionCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->e:I

    return p0
.end method

.method public getBandHeadersInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->f:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->f:Ljava/io/InputStream;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->f:Ljava/io/InputStream;

    return-object p0
.end method

.method public getBandHeadersSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->g:I

    return p0
.end method

.method public getClassCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->h:I

    return p0
.end method

.method public getCpClassCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->i:I

    return p0
.end method

.method public getCpDescriptorCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->j:I

    return p0
.end method

.method public getCpDoubleCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->k:I

    return p0
.end method

.method public getCpFieldCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->l:I

    return p0
.end method

.method public getCpFloatCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->m:I

    return p0
.end method

.method public getCpIMethodCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->n:I

    return p0
.end method

.method public getCpIntCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->o:I

    return p0
.end method

.method public getCpLongCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->p:I

    return p0
.end method

.method public getCpMethodCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->q:I

    return p0
.end method

.method public getCpSignatureCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->r:I

    return p0
.end method

.method public getCpStringCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->s:I

    return p0
.end method

.method public getCpUTF8Count()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->t:I

    return p0
.end method

.method public getDefaultClassMajorVersion()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->u:I

    return p0
.end method

.method public getDefaultClassMinorVersion()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->v:I

    return p0
.end method

.method public getInnerClassCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->w:I

    return p0
.end method

.method public getNumberOfFiles()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->x:I

    return p0
.end method

.method public getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->z:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    return-object p0
.end method

.method public getSegmentsRemaining()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->y:I

    return p0
.end method

.method public final h(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/16 v0, 0x96

    if-ne p1, v0, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a:I

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid segment major version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->b:I

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Invalid segment minor version"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(J)V
    .locals 0

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->e:I

    return-void
.end method

.method public final k([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->f:Ljava/io/InputStream;

    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Error;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v1, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->C:[I

    array-length v1, v1

    const-string v2, "archive_magic_word"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->b(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->C:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v3, v0, v1

    aget v2, v2, v1

    if-ne v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Bad header"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v1, "archive_minver"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->i(I)V

    const-string v1, "archive_majver"

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->h(I)V

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    const-string v2, "archive_options"

    invoke-virtual {p0, v2, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->a(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->z:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->c(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->d(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->f(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->e(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersSize()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->g(Ljava/io/InputStream;[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->k([B)V

    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->B:I

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->B:I

    return-void
.end method

.method public setArchiveModtime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->c:J

    return-void
.end method

.method public setArchiveSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->d:J

    return-void
.end method

.method public setSegmentsRemaining(J)V
    .locals 0

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->y:I

    return-void
.end method

.method public unpack()V
    .locals 0

    return-void
.end method
