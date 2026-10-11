.class public final Lcom/google/android/exoplayer2/StreamVolumeManager$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/StreamVolumeManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$b;->a:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/StreamVolumeManager;Lcom/google/android/exoplayer2/StreamVolumeManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager$b;-><init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager$b;->b(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->b(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$b;->a:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->a(Lcom/google/android/exoplayer2/StreamVolumeManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$b;->a:Lcom/google/android/exoplayer2/StreamVolumeManager;

    new-instance p2, Lcom/sunia/HTREnginev2/g0n;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/g0n;-><init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
