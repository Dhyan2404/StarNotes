.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Z

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkx;

.field public static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkx;

.field public static final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

.field public static final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

.field public static final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.sql.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zza:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnt;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnt;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkx;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnu;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnu;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkx;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnp;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbns;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkx;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkx;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    goto :goto_1
.end method
