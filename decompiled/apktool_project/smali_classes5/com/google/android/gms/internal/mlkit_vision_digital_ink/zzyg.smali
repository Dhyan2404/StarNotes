.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzb:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc:Ljava/util/List;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzt(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaly;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " with "

    const-string v3, "MobStore.FileStorage"

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "Cannot register backend, name empty"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza:Ljava/util/Map;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot override Backend "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzt(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaly;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    const-string v0, "compress"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p2, "Cannot register transform, name empty"

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzb:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot to override Transform "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static final zzk(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzn(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyc;)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zze(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzf(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v4, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;)V

    return-object p0
.end method

.method private final zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Cannot open, unregistered backend: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzn(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "transform="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zze(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzs;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v4, v2, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzb:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    if-eqz v5, :cond_3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such transform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zza()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzq(Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final zzb(Landroid/net/Uri;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzn(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzk(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzt(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakf;->zza(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v6, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzk(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzj(Landroid/net/Uri;)V

    return-void
.end method

.method public final zze(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzk(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzk(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzf(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zza()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzl(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzg(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zza()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zza()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzm(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string p1, "Cannot rename file across backends"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzh(Landroid/net/Uri;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzj(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzb(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzh(Landroid/net/Uri;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zze(Landroid/net/Uri;)V

    return v1
.end method

.method public final zzi(Landroid/net/Uri;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zza()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzi(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final zzj(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzk(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzn(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method
