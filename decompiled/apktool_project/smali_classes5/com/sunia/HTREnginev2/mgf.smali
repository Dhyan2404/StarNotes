.class public final synthetic Lcom/sunia/HTREnginev2/mgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/offline/DownloadService$b;

.field public final synthetic f:Lcom/google/android/exoplayer2/offline/DownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadService$b;Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mgf;->e:Lcom/google/android/exoplayer2/offline/DownloadService$b;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mgf;->f:Lcom/google/android/exoplayer2/offline/DownloadService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mgf;->e:Lcom/google/android/exoplayer2/offline/DownloadService$b;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mgf;->f:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadService$b;->a(Lcom/google/android/exoplayer2/offline/DownloadService$b;Lcom/google/android/exoplayer2/offline/DownloadService;)V

    return-void
.end method
