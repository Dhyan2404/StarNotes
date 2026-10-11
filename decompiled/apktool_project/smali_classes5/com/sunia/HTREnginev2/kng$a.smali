.class public final Lcom/sunia/HTREnginev2/kng$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/bfk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/kng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

.field public b:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kng$a;->a:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kng$a;->b:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/kng$a;->c:J

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/kng$a;->d:J

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 4

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/kng$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    new-instance v0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kng$a;->a:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/kng$a;->c:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;J)V

    return-object v0
.end method

.method public b(J)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kng$a;->b:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/kng$a;->d:J

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/kng$a;->c:J

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 6

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/kng$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/kng$a;->d:J

    return-wide v0

    :cond_0
    return-wide v2
.end method
