.class public final synthetic Lcom/sunia/HTREnginev2/p6o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;

    check-cast p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->a(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;)I

    move-result p0

    return p0
.end method
