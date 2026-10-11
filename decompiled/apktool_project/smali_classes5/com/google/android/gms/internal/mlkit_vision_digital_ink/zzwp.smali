.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaai;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzd:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzi;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzi;[B)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzb:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzc:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzd:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzd:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzd(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;JLjava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v0, p6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzb:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzc:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzc:Ljava/util/HashMap;

    new-instance p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;

    iget-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zza:Landroid/content/Context;

    invoke-direct {v1, p6, p7, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)V

    iget-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwm;

    const/4 p7, 0x0

    invoke-direct {v2, p6, p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;[B)V

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x0

    move-object v0, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwm;JLjava/util/concurrent/TimeUnit;[B)V

    invoke-virtual {p4, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzd:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzc:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;

    invoke-virtual {p4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
