.class public final enum Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    const-string v2, "LAZILY_PARSED_NUMBER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    const-string v3, "LONG_OR_DOUBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    const-string v4, "BIG_DECIMAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zze:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zze:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    throw v0

    :cond_0
    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjv;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
