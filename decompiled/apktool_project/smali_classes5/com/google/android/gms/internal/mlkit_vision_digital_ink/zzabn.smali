.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

.field private zze:Landroid/content/SharedPreferences;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zza:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzc:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    return-void
.end method

.method public static zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabh;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabe;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzl(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zze:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;-><init>(Landroid/content/SharedPreferences;Ljava/util/Set;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabk;)V

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabj;

    invoke-interface {p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabj;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzl(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zze()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzc:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zze:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzf()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zze:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zze:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzc:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failed to remove migrated SharedPreferences keys: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
