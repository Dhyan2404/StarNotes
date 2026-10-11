.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;


# instance fields
.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaml;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaml;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzc:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzd:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzd:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzc:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamp;)V

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoc;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoc;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzd:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key must be repeating"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoc;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzc:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
