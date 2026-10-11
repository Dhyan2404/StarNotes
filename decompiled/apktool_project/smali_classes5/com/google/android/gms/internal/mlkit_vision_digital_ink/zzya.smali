.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzq;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzq;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;->zza:Ljava/util/List;

    return-void
.end method

.method public static zza(Ljava/util/List;Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaai;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaai;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;

    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;->zza:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;->zza()V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;->zza:Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;->zza()V

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;->zza:Ljava/util/List;

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;

    .line 9
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaah;->zza()V

    goto :goto_0

    :cond_0
    return p1
.end method
