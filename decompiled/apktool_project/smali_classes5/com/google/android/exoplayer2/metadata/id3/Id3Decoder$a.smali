.class public final Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;->a:I

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;->b:Z

    iput p3, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;->c:I

    return p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$a;->b:Z

    return p0
.end method
