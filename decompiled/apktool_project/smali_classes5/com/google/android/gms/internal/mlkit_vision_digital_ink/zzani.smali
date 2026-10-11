.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamk;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p0, 0x0

    return p0
.end method
