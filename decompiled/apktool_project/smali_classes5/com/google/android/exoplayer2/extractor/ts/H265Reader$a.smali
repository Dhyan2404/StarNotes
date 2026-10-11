.class public final Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final n:I = 0x2


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public b:J

.field public c:Z

.field public d:I

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x20

    if-gt v0, p0, :cond_0

    const/16 v0, 0x23

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(I)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(JIZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->c:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->m:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->j:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->g:Z

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->i:Z

    if-eqz p4, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->b:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->d(I)V

    :cond_2
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->b:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->k:J

    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->e:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->l:J

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->c:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->m:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->i:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 8

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->l:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->m:Z

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->b:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->k:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public e([BII)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->f:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->d:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->g:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->f:Z

    goto :goto_1

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->d:I

    :cond_2
    :goto_1
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->f:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->g:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->h:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->i:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->j:Z

    return-void
.end method

.method public g(JIIJZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->g:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->h:Z

    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->e:J

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->d:I

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->b:J

    invoke-static {p4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->c(I)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->i:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->j:Z

    if-nez p1, :cond_1

    if-eqz p7, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->d(I)V

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->i:Z

    :cond_1
    invoke-static {p4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->j:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->h:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->j:Z

    :cond_2
    const/16 p1, 0x10

    if-lt p4, p1, :cond_3

    const/16 p1, 0x15

    if-gt p4, p1, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->c:Z

    if-nez p1, :cond_4

    const/16 p1, 0x9

    if-gt p4, p1, :cond_5

    :cond_4
    move v0, p2

    :cond_5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$a;->f:Z

    return-void
.end method
