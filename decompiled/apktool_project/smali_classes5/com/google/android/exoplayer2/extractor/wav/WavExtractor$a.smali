.class public final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final m:[I

.field public static final n:[I


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final c:Lcom/sunia/HTREnginev2/o5o;

.field public final d:I

.field public final e:[B

.field public final f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final g:I

.field public final h:Lcom/google/android/exoplayer2/Format;

.field public i:I

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->m:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/sunia/HTREnginev2/o5o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->a:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget p1, p3, Lcom/sunia/HTREnginev2/o5o;->c:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->g:I

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p3, Lcom/sunia/HTREnginev2/o5o;->g:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->d:I

    iget v1, p3, Lcom/sunia/HTREnginev2/o5o;->b:I

    iget v2, p3, Lcom/sunia/HTREnginev2/o5o;->e:I

    mul-int/lit8 v3, v1, 0x4

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x8

    iget v3, p3, Lcom/sunia/HTREnginev2/o5o;->f:I

    mul-int/2addr v3, v1

    div-int/2addr v2, v3

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p2

    iget v2, p3, Lcom/sunia/HTREnginev2/o5o;->e:I

    mul-int/2addr v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->e:[B

    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->h(II)I

    move-result v3

    mul-int/2addr p2, v3

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget p2, p3, Lcom/sunia/HTREnginev2/o5o;->c:I

    iget v2, p3, Lcom/sunia/HTREnginev2/o5o;->e:I

    mul-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v0

    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v2, "audio/raw"

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->h(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/sunia/HTREnginev2/o5o;->b:I

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/sunia/HTREnginev2/o5o;->c:I

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->h:Lcom/google/android/exoplayer2/Format;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x38

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Expected frames per block: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static h(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->k:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->f(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->d:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget v1, v1, Lcom/sunia/HTREnginev2/o5o;->e:I

    mul-int/2addr v0, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i:I

    if-ge v3, v0, :cond_2

    sub-int v3, v0, v3

    int-to-long v3, v3

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->e:[B

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i:I

    invoke-interface {p1, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget p2, p2, Lcom/sunia/HTREnginev2/o5o;->e:I

    div-int/2addr p1, p2

    if-lez p1, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->e:[B

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->d([BILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i:I

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget p3, p3, Lcom/sunia/HTREnginev2/o5o;->e:I

    mul-int/2addr p1, p3

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->k:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->k:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->f(I)I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->g:I

    if-lt p1, p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i(I)V

    :cond_3
    if-eqz v1, :cond_4

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->k:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->f(I)I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i(I)V

    :cond_4
    return v1
.end method

.method public b(IJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->a:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/sunia/HTREnginev2/q5o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->d:I

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/sunia/HTREnginev2/q5o;-><init>(Lcom/sunia/HTREnginev2/o5o;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->h:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public c(J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->i:I

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->j:J

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->k:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->l:J

    return-void
.end method

.method public final d([BILcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget v3, v3, Lcom/sunia/HTREnginev2/o5o;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->e([BII[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->d:I

    mul-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->g(I)I

    move-result p0

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p3, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method public final e([BII[B)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget v1, v0, Lcom/sunia/HTREnginev2/o5o;->e:I

    iget v0, v0, Lcom/sunia/HTREnginev2/o5o;->b:I

    mul-int v2, p2, v1

    mul-int/lit8 v3, p3, 0x4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v2

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x58

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget-object v5, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->n:[I

    aget v5, v5, v2

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->d:I

    mul-int/2addr p2, p0

    mul-int/2addr p2, v0

    add-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    and-int/lit16 p0, v4, 0xff

    int-to-byte p0, p0

    aput-byte p0, p4, p2

    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 p3, v4, 0x8

    int-to-byte p3, p3

    aput-byte p3, p4, p0

    const/4 p0, 0x0

    move p3, p0

    :goto_0
    mul-int/lit8 v6, v1, 0x2

    if-ge p3, v6, :cond_2

    div-int/lit8 v6, p3, 0x8

    div-int/lit8 v7, p3, 0x2

    rem-int/lit8 v7, v7, 0x4

    mul-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v3

    add-int/2addr v6, v7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    rem-int/lit8 v7, p3, 0x2

    if-nez v7, :cond_0

    and-int/lit8 v6, v6, 0xf

    goto :goto_1

    :cond_0
    shr-int/lit8 v6, v6, 0x4

    :goto_1
    and-int/lit8 v7, v6, 0x7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v5

    shr-int/lit8 v5, v7, 0x3

    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_1

    neg-int v5, v5

    :cond_1
    add-int/2addr v4, v5

    const/16 v5, -0x8000

    const/16 v7, 0x7fff

    invoke-static {v4, v5, v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr p2, v5

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, p4, p2

    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p4, v5

    sget-object v5, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->m:[I

    aget v5, v5, v6

    add-int/2addr v2, v5

    sget-object v5, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->n:[I

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, p0, v6}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v2

    aget v5, v5, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget p0, p0, Lcom/sunia/HTREnginev2/o5o;->b:I

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p1, p0

    return p1
.end method

.method public final g(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget p0, p0, Lcom/sunia/HTREnginev2/o5o;->b:I

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->h(II)I

    move-result p0

    return p0
.end method

.method public final i(I)V
    .locals 11

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->j:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->l:J

    const-wide/32 v4, 0xf4240

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->c:Lcom/sunia/HTREnginev2/o5o;

    iget v6, v6, Lcom/sunia/HTREnginev2/o5o;->c:I

    int-to-long v6, v6

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->g(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->k:I

    sub-int v9, v1, v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move v8, v0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->l:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->l:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->k:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$a;->k:I

    return-void
.end method
