.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

.field public final synthetic zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;->zzd:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabw;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabs;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
