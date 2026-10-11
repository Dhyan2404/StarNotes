.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field final synthetic zzb:Ljava/util/concurrent/Executor;

.field final synthetic zzc:Landroid/content/Context;

.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field final synthetic zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/util/concurrent/Executor;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 10

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zza()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zzb()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zzc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zzb:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;-><init>(Ljava/util/concurrent/Executor;I)V

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqx;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqx;-><init>(Lokhttp3/OkHttpClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zzc:Landroid/content/Context;

    invoke-direct {v6, v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxt;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zzc:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;[B)V

    return-object v0
.end method
