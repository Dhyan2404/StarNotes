.class public final enum Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbul;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;


# instance fields
.field private final zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    const-string v2, "DOWNLOADED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    const-string v3, "PENDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    const-string v4, "PENDING_CUSTOM_VALIDATION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzf:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbul;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzf:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzg:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzg:I

    return p0
.end method
