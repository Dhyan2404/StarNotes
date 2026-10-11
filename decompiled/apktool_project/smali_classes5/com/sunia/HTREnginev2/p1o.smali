.class public final synthetic Lcom/sunia/HTREnginev2/p1o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J

.field public final synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p1o;->e:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/p1o;->f:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/p1o;->g:J

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/p1o;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1o;->e:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/p1o;->f:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/p1o;->g:J

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/p1o;->h:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->g(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    return-void
.end method
