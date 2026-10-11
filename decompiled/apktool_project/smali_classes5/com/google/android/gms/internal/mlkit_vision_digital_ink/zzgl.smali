.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

.field public static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgk;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zzb(Ljava/util/Set;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgk;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zzb(Ljava/util/Set;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    move-result-object v0

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zzb(Ljava/util/Set;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;

    return-object v0
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;
.end method

.method public abstract zzb()Z
.end method
