.class public final enum Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;


# instance fields
.field public final zzd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    const-string v1, "NEW_FILE_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    const-string v2, "ADD_DOWNLOAD_TRANSFORM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    const-string v3, "USE_CHECKSUM_ONLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zze:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zze:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown MDD FileKey version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    return-object p0
.end method
