.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 11

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzd()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zzh(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    :goto_1
    move-object v7, v2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v9

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;

    move-result-object v10

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;)V

    return-object p2
.end method
