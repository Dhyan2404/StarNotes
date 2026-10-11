.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/lang/Number;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
