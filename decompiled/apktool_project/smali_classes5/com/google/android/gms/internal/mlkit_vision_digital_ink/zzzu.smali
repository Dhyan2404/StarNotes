.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzb:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;->zzb:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;->zzb:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb(Ljava/io/InputStream;JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class p4, Ljava/lang/Throwable;

    iget-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;->zzb:Landroid/net/Uri;

    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    move-result-wide v0

    cmp-long p5, p2, v0

    if-gtz p5, :cond_3

    const-wide/16 v0, 0x0

    cmp-long p5, p2, v0

    if-lez p5, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzy;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzy;

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;

    move-result-object p5

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzu;->zzb:Landroid/net/Uri;

    invoke-virtual {v0, p0, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    :try_start_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapb;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_1
    add-long/2addr p2, p4

    return-wide p2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_2
    const-string p2, "addSuppressed"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Class;

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-virtual {p4, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_1
    throw p1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid resumed download; offsetBytes exceeds the existing data size: %d, %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
