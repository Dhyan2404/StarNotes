.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/sql/Time;

    const/4 p2, 0x0

    if-ne p0, p1, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnp;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbno;)V

    return-object p0

    :cond_0
    return-object p2
.end method
