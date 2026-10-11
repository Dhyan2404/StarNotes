.class public final Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;

    iput p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->f:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->f:I

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->r(I)Z

    move-result p0

    return p0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->f:I

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->u(I)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 6

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->f:I

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->B(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p0

    return p0
.end method

.method public skipData(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;->e:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$b;->f:I

    invoke-virtual {v1, v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$d;->I(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$a;IJ)I

    move-result p0

    return p0
.end method
