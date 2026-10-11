.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

.field private final zzc:Ljava/lang/Object;

.field private zzd:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzym;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzc:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzze;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzj;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzze;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zza:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyj;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyj;

    return-void
.end method

.method public static zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyk;)V

    return-object v0
.end method

.method private final zzo(Landroid/net/Uri;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zza:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final zzp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzh;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzh;

    const-string v1, "Android backend cannot perform remote operations without a remote backend"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzh;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zza:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyr;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;->zza()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzb(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzf(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzc;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzb;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzc;->zzb(Ljava/io/File;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzc;->zza()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk;

    const-string p1, "Operation across authorities is not allowed."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzc(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzc(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzp()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    return-object p0
.end method

.method public final zzf(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zza:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzys;->zza(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzj;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzd:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zza:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyo;->zza(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzd:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzd:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return-object p1

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzh;

    const-string p1, "Cannot access credential-protected data from direct boot"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzh;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "operation is not permitted in other authorities."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzg(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzd;->zza(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzn;->zzb(Ljava/io/File;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzn;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzp()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    const-string p0, "android"

    return-object p0
.end method

.method public final zzi(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzd;->zza(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzp()V

    const/4 p0, 0x0

    throw p0
.end method
