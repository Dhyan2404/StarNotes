.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;->e:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;->f:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;->e:I

    iget p1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;->e:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;->a(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$d;)I

    move-result p0

    return p0
.end method
