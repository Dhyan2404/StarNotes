.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

.field private final zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callable=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trial=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final zzb()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zzb:I

    if-gt v3, v4, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->cancel(Z)Z

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    :cond_1
    invoke-static {v3, v2, v1}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    move-result p0

    return p0
.end method
