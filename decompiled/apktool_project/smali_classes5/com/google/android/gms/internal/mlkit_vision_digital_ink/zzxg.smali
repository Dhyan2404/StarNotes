.class public final enum Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    const-string v1, "WIFI_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    const-string v2, "WIFI_OR_CELLULAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    return-object v0
.end method
