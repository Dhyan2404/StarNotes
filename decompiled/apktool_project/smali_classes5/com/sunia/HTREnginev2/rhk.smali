.class public final Lcom/sunia/HTREnginev2/rhk;
.super Lcom/sunia/HTREnginev2/e0n;
.source "SourceFile"


# static fields
.field public static final r:[B

.field public static final s:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sunia/HTREnginev2/rhk;->r:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sunia/HTREnginev2/rhk;->s:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/e0n;-><init>()V

    return-void
.end method

.method public static o(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    array-length v1, p1

    new-array v1, v1, [B

    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static p(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/rhk;->r:[B

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/rhk;->o(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public f(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/rhk;->n([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/e0n;->c(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public i(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/sunia/HTREnginev2/e0n$b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    sget-object p0, Lcom/sunia/HTREnginev2/rhk;->r:[B

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/rhk;->o(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/OpusUtil;->getChannelCount([B)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object p0

    iget-object v0, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    move p3, p2

    :cond_0
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    new-instance p3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v0, "audio/opus"

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const p3, 0xbb80

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    return p2

    :cond_1
    sget-object p0, Lcom/sunia/HTREnginev2/rhk;->s:[B

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/rhk;->o(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p0, p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p1, p3, p3}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    if-nez p0, :cond_2

    return p2

    :cond_2
    iget-object p1, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object p3, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    iget-object p3, p3, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    return p2

    :cond_3
    iget-object p0, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return p3
.end method

.method public final n([B)J
    .locals 5

    const/4 p0, 0x0

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    aget-byte p1, p1, v1

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr p0, p1

    and-int/lit8 v0, p0, 0x3

    const/16 v3, 0x10

    if-lt p0, v3, :cond_2

    const/16 p0, 0x9c4

    shl-int/2addr p0, v0

    goto :goto_1

    :cond_2
    const/16 v3, 0xc

    const/16 v4, 0x2710

    if-lt p0, v3, :cond_3

    and-int/lit8 p0, v0, 0x1

    shl-int p0, v4, p0

    goto :goto_1

    :cond_3
    if-ne v0, p1, :cond_4

    const p0, 0xea60

    goto :goto_1

    :cond_4
    shl-int p0, v4, v0

    :goto_1
    int-to-long v0, v2

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method
