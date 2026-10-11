.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public zzb(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public zzc(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;
.end method

.method public synthetic zzf(Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public zzg(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public zzi(Landroid/net/Uri;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzj(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzj(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzk(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzk(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzl(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzl(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzm(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzm(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public final zzn(Landroid/net/Uri;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzd;->zza(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public final zzq(Landroid/net/Uri;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzq(Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final zzr(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzr(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final zzs(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzs(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final zzt(Landroid/net/Uri;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zzb(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzt(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaag;->zza(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
