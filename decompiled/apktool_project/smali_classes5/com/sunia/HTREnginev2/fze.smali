.class public final synthetic Lcom/sunia/HTREnginev2/fze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$d;

.field public final synthetic f:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$d;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fze;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$d;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fze;->f:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fze;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$d;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fze;->f:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$d;->d(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$d;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
