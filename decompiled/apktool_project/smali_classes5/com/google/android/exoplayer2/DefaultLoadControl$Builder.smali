.class public final Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xc350

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->c:I

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->d:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->g:Z

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->h:I

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->i:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/DefaultLoadControl;
    .locals 13

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->j:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    iget-object v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    iget v5, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->b:I

    iget v6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->c:I

    iget v7, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->d:I

    iget v8, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->e:I

    iget v9, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->f:I

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->g:Z

    iget v11, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->h:I

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->i:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V

    return-object v0
.end method

.method public createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object p0

    return-object p0
.end method

.method public setAllocator(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object p0
.end method

.method public setBackBuffer(IZ)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string v0, "backBufferDurationMs"

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->h:I

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->i:Z

    return-object p0
.end method

.method public setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p3, v0, v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p4, v0, v3, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    invoke-static {p1, p3, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p4, v0, v3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {p2, p1, v1, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->b:I

    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->c:I

    iput p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->d:I

    iput p4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->e:I

    return-object p0
.end method

.method public setPrioritizeTimeOverSizeThresholds(Z)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->g:Z

    return-object p0
.end method

.method public setTargetBufferBytes(I)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->f:I

    return-object p0
.end method
