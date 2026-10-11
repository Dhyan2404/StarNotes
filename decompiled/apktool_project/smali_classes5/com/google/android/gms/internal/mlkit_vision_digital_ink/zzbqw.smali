.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgo;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;[B)V
    .locals 0
    .param p4    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 8

    const-string v0, "OffroadFileDownloader"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzb()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzb()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzys;->zza(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzb()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzv;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzv;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqv;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrt;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqv;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzb()Landroid/net/Uri;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unable to create mobstore ResponseWriter for file %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzx:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzb()Landroid/net/Uri;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The file uri is malformed, uri = %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzw:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzf()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;

    invoke-direct {v5, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;[B)V

    const/4 p4, 0x0

    invoke-virtual {v8, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzp(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    sget-object p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    move-result-object v0

    if-ne p4, v0, :cond_0

    sget-object p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    invoke-virtual {v8, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    invoke-virtual {v8, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zza()I

    move-result p4

    if-lez p4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zza()I

    move-result p4

    invoke-virtual {v8, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqu;

    invoke-direct {p4, p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p5, p4, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzm()Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzf()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Data download scheduled for file: %s"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "OffroadFileDownloader"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzf()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Data download scheduled for file "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzc(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzd(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
