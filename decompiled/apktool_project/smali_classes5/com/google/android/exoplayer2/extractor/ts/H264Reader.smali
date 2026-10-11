.class public final Lcom/google/android/exoplayer2/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;
    }
.end annotation


# static fields
.field public static final p:I = 0x6

.field public static final q:I = 0x7

.field public static final r:I = 0x8


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/sunia/HTREnginev2/arj;

.field public final e:Lcom/sunia/HTREnginev2/arj;

.field public final f:Lcom/sunia/HTREnginev2/arj;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->a:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->b:Z

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->h:[Z

    new-instance p1, Lcom/sunia/HTREnginev2/arj;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/sunia/HTREnginev2/arj;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    new-instance p1, Lcom/sunia/HTREnginev2/arj;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/sunia/HTREnginev2/arj;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    new-instance p1, Lcom/sunia/HTREnginev2/arj;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/sunia/HTREnginev2/arj;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->f:Lcom/sunia/HTREnginev2/arj;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->m:J

    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->j:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(JIIJ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p4}, Lcom/sunia/HTREnginev2/arj;->b(I)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p4}, Lcom/sunia/HTREnginev2/arj;->b(I)Z

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->l:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    iget-object v3, v2, Lcom/sunia/HTREnginev2/arj;->d:[B

    iget v2, v2, Lcom/sunia/HTREnginev2/arj;->e:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    iget-object v3, v2, Lcom/sunia/HTREnginev2/arj;->d:[B

    iget v2, v2, Lcom/sunia/HTREnginev2/arj;->e:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    iget-object v3, v2, Lcom/sunia/HTREnginev2/arj;->d:[B

    iget v2, v2, Lcom/sunia/HTREnginev2/arj;->e:I

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    iget-object v4, v3, Lcom/sunia/HTREnginev2/arj;->d:[B

    iget v3, v3, Lcom/sunia/HTREnginev2/arj;->e:I

    invoke-static {v4, v1, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v1

    iget v3, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->profileIdc:I

    iget v4, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v5, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->levelIdc:I

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->j:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    const-string v6, "video/avc"

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->l:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->f(Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->e(Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->d()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->d()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/arj;->d:[B

    iget v0, v0, Lcom/sunia/HTREnginev2/arj;->e:I

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->f(Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/arj;->d:[B

    iget v0, v0, Lcom/sunia/HTREnginev2/arj;->e:I

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->e(Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->d()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->f:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p4}, Lcom/sunia/HTREnginev2/arj;->b(I)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->f:Lcom/sunia/HTREnginev2/arj;

    iget-object v0, p4, Lcom/sunia/HTREnginev2/arj;->d:[B

    iget p4, p4, Lcom/sunia/HTREnginev2/arj;->e:I

    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->f:Lcom/sunia/HTREnginev2/arj;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/arj;->d:[B

    invoke-virtual {v0, v1, p4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->a:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->o:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p4, p5, p6, v0}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->l:Z

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->n:Z

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->b(JIZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->n:Z

    :cond_5
    return-void
.end method

.method public final c([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/arj;->a([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/arj;->a([BII)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->f:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/arj;->a([BII)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->a([BII)V

    return-void
.end method

.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->a()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->g:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->g:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->j:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->h:[Z

    invoke-static {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->c([BII)V

    return-void

    :cond_0
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->c([BII)V

    :cond_1
    sub-int v10, v1, p1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->g:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    iget-wide v12, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->m:J

    move-object v7, p0

    move-wide v8, v4

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->b(JIIJ)V

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->m:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->j:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->b:Z

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;ZZ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->a:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final d(JIJ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p3}, Lcom/sunia/HTREnginev2/arj;->e(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p3}, Lcom/sunia/HTREnginev2/arj;->e(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->f:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0, p3}, Lcom/sunia/HTREnginev2/arj;->e(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->h(JIJ)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->m:J

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->n:Z

    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->n:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->m:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->h:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->d:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->d()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->e:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->d()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->f:Lcom/sunia/HTREnginev2/arj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/arj;->d()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->k:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$b;->g()V

    :cond_0
    return-void
.end method
