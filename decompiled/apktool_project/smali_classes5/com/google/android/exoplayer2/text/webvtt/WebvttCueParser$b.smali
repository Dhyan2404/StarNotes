.class public Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/p6o;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/p6o;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->a:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;ILcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;-><init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->e(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;)I

    move-result p0

    return p0
.end method

.method public static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->a:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->b:I

    return p0
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->a:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;

    iget p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;->b:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$b;->a:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;

    iget p1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$c;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
