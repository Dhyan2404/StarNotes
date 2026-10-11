.class public final Lcom/google/android/exoplayer2/source/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final e:I

.field public final synthetic f:Lcom/google/android/exoplayer2/source/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b$c;->f:Lcom/google/android/exoplayer2/source/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/exoplayer2/source/b$c;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/b$c;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/b$c;->e:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$c;->f:Lcom/google/android/exoplayer2/source/b;

    iget p0, p0, Lcom/google/android/exoplayer2/source/b$c;->e:I

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/b;->u(I)Z

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$c;->f:Lcom/google/android/exoplayer2/source/b;

    iget p0, p0, Lcom/google/android/exoplayer2/source/b$c;->e:I

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/b;->B(I)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$c;->f:Lcom/google/android/exoplayer2/source/b;

    iget p0, p0, Lcom/google/android/exoplayer2/source/b$c;->e:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/b;->G(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p0

    return p0
.end method

.method public skipData(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$c;->f:Lcom/google/android/exoplayer2/source/b;

    iget p0, p0, Lcom/google/android/exoplayer2/source/b$c;->e:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/b;->K(IJ)I

    move-result p0

    return p0
.end method
