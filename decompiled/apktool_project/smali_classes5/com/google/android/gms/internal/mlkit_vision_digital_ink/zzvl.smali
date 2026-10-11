.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvk;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "AndroidSharingUtil"

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaab;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaab;

    move-result-object p1

    invoke-virtual {p5, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzi; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;

    move-result-object p2

    invoke-virtual {p5, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapb;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_5

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzi; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    :catchall_0
    move-exception p2

    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvj;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvj;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_8
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzi; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Failed to copy to the blobstore after download for file %s, file group %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x1

    if-eq p0, p6, :cond_3

    const/16 p0, 0x15

    goto :goto_2

    :cond_3
    const/16 p0, 0x16

    :goto_2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error while copying file %s, group %s, to the shared blob storage"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :catch_1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Malformed lease uri file %s, file group %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Malformed blob Uri for file %s, group %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 p0, 0x11

    goto :goto_4

    :catch_2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Failed to share after download for file %s, file group %s due to LimitExceededException"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "System limit exceeded for file %s, group %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 p0, 0x19

    goto :goto_4

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Failed to share after download for file %s, file group %s. UnsupportedFileStorageOperation was thrown with message \"%s\""

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzl(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnsupportedFileStorageOperation was thrown: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 p0, 0x18

    :cond_5
    :goto_4
    if-nez p0, :cond_6

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvk;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvk;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvk;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "AndroidSharingUtil"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Failed to check existence in the shared storage for file %s, file group %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Error while checking if file %s, group %s, exists in the shared blob storage."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 p0, 0x13

    goto :goto_0

    :catch_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Malformed lease uri file %s, file group %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Malformed blob Uri for file %s, group %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 p0, 0x11

    :goto_0
    move v3, v2

    move v2, p0

    move p0, v3

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Failed to share for file %s, file group %s. UnsupportedFileStorageOperation was thrown with message \"%s\""

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzl(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnsupportedFileStorageOperation was thrown: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 p0, 0x18

    goto :goto_0

    :goto_2
    if-nez v2, :cond_1

    return p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvk;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvk;-><init>(ILjava/lang/String;)V

    throw p0
.end method
