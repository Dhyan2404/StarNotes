.class public Lcom/google/android/exoplayer2/AudioFocusManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Landroid/os/Handler;

.field public final synthetic f:Lcom/google/android/exoplayer2/AudioFocusManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/AudioFocusManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager$a;->f:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/AudioFocusManager$a;->e:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/AudioFocusManager$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager$a;->b(I)V

    return-void
.end method

.method private synthetic b(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager$a;->f:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->d(Lcom/google/android/exoplayer2/AudioFocusManager;I)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager$a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/sunia/HTREnginev2/uh;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/uh;-><init>(Lcom/google/android/exoplayer2/AudioFocusManager$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
