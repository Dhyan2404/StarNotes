.class public final enum Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbul;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;


# instance fields
.field private final zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    const-string v2, "SHARED_PREFERENCES_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    const-string v3, "SHARED_PREFERENCES_AND_PROTOSTORE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    const-string v4, "PROTOSTORE_ONLY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzf:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbul;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzf:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzg:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzg:I

    return p0
.end method
