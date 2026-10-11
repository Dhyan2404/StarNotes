.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    const-string v1, "gms_icing_mdd_shared_files"

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    const-string v2, "gms_icing_mdd_shared_files"

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzd(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwc; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to deserialize newFileKey:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)I

    const-string v5, "|"

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzg(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    if-nez v3, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    :cond_0
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Fail to set target version "

    const-string v3, "Failed to commit migration version to disk. Fail to set target version to "

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzb(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x2

    const-string v5, "SharedFilesMetadata"

    const/4 v6, 0x1

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzf()I

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v7

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v8, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    iget v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    iget v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-ne v8, v9, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v11, "."

    if-ge v8, v9, :cond_2

    filled-new-array {v5, v0, v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s Cannot migrate back from value %s to %s. Clear everything!"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downgraded file key from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    :cond_1
    :goto_0
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_2
    add-int/2addr v9, v6

    :goto_1
    :try_start_0
    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-gt v9, v0, :cond_b

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "%s: Unable to read sharedFile from shared preferences."

    const-string v13, "%s Failed to deserialize file key %s, remove and continue."

    const-string v14, "Failed to commit migration metadata to disk"

    const-string v15, "gms_icing_mdd_shared_files"

    if-eq v8, v6, :cond_6

    if-ne v8, v4, :cond_5

    :try_start_1
    const-string v0, "%s: Starting migration to dedup on checksum only"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v8, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v0, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v10, v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzd(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object v4
    :try_end_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwc; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    move-result-object v6

    invoke-static {v0, v10, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zzc(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    if-nez v6, :cond_3

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    invoke-interface {v8, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_3
    invoke-interface {v8, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zzf(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    goto :goto_3

    :catch_0
    invoke-static {v13, v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-interface {v8, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3
    const/4 v4, 0x2

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zze(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v4, "Migrate to ChecksumOnly failed."

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrade to version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "not supported!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string v0, "%s: Starting migration to add download transform"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v0, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v10, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v15, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v8, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzd(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object v10
    :try_end_4
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwc; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    move-result-object v15

    invoke-static {v0, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zzc(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    if-nez v15, :cond_7

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_7
    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zzf(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    goto :goto_4

    :catch_1
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_8
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zze(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v4, "Migrate to DownloadTransform failed."

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-eq v0, v4, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zze(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-eq v0, v4, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zze(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_c
    const/4 v6, 0x1

    :goto_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    iget v5, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-eq v4, v5, :cond_d

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zze(Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_d
    throw v0

    :cond_e
    const-string v0, "%s Device isn\'t migrated to new file key, clear and set migration."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zza(Landroid/content/Context;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzf()I

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    const-string v1, "gms_icing_mdd_shared_files"

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zzc(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    const-string v1, "gms_icing_mdd_shared_files"

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zzg(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zza:Landroid/content/Context;

    const-string v1, "gms_icing_mdd_shared_files"

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zzh(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
