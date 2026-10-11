.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzd()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbks;

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbks;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;)V

    return-object p2
.end method
