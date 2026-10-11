.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

.field public static final synthetic zzb:I

.field private static volatile zzc:Z

.field private static volatile zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zze:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtz;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zze:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtq;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    return-object p0
.end method
