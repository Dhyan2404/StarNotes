.class public final synthetic Lcom/sunia/HTREnginev2/mm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher$a;

.field public final synthetic f:I

.field public final synthetic g:J

.field public final synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mm;->e:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher$a;

    iput p2, p0, Lcom/sunia/HTREnginev2/mm;->f:I

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/mm;->g:J

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/mm;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mm;->e:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher$a;

    iget v1, p0, Lcom/sunia/HTREnginev2/mm;->f:I

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/mm;->g:J

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/mm;->h:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher$a;IJJ)V

    return-void
.end method
