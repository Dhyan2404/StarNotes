.class public final Lcom/sunia/HTREnginev2/kng;
.super Lcom/sunia/HTREnginev2/e0n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/kng$a;
    }
.end annotation


# static fields
.field public static final t:B = -0x1t

.field public static final u:I = 0x4


# instance fields
.field public r:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public s:Lcom/sunia/HTREnginev2/kng$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/e0n;-><init>()V

    return-void
.end method

.method public static o([B)Z
    .locals 2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static p(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public f(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/kng;->o([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/kng;->n(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public i(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/sunia/HTREnginev2/e0n$b;)Z
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kng;->r:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance p2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>([BI)V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kng;->r:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    const/16 p0, 0x9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {v0, p0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getFormat([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    return v2

    :cond_0
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithSeekTable(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object p2

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kng;->r:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    new-instance p3, Lcom/sunia/HTREnginev2/kng$a;

    invoke-direct {p3, p2, p1}, Lcom/sunia/HTREnginev2/kng$a;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)V

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kng;->s:Lcom/sunia/HTREnginev2/kng$a;

    return v2

    :cond_1
    invoke-static {v0}, Lcom/sunia/HTREnginev2/kng;->o([B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sunia/HTREnginev2/kng;->s:Lcom/sunia/HTREnginev2/kng$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/sunia/HTREnginev2/kng$a;->c(J)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kng;->s:Lcom/sunia/HTREnginev2/kng$a;

    iput-object p0, p4, Lcom/sunia/HTREnginev2/e0n$b;->b:Lcom/sunia/HTREnginev2/bfk;

    :cond_2
    iget-object p0, p4, Lcom/sunia/HTREnginev2/e0n$b;->a:Lcom/google/android/exoplayer2/Format;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_3
    return v2
.end method

.method public l(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/e0n;->l(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kng;->r:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kng;->s:Lcom/sunia/HTREnginev2/kng$a;

    :cond_0
    return-void
.end method

.method public final n(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x4

    shr-int/2addr p0, v0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtf8EncodedLong()J

    :cond_1
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->readFrameBlockSizeSamplesFromKey(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return p0
.end method
