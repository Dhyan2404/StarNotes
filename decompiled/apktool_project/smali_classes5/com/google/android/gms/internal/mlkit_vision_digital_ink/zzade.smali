.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

.field private zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method
