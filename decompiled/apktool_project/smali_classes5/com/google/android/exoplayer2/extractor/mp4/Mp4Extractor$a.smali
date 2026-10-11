.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/mp4/Track;

.field public final b:Lcom/sunia/HTREnginev2/ykn;

.field public final c:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final d:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/sunia/HTREnginev2/ykn;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$a;->a:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$a;->b:Lcom/sunia/HTREnginev2/ykn;

    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$a;->c:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$a;->d:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    return-void
.end method
