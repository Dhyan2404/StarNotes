.class public Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public constructor <init>(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;->a:I

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;->b:I

    iput p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;->c:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$c;->d:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    return-void
.end method
