.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

.field public final synthetic zzc:I

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;->zzc:I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjf;->zzd:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;->zzS(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;IILjava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
