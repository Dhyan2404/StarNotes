.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaad;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaad;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzb()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzb(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzj(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzb(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Child %s could not be opened"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
