.class public Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/common/sdkinternal/model/RemoteModelManagerInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MddModelManager.class"
    .end annotation
.end field


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

.field private final zzj:Landroidx/work/WorkManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzc:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzt(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzu(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    move-result-object v4

    const-string v1, "mlkit_digital_ink_recognition"

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzs(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzj:Landroidx/work/WorkManager;

    const-string p1, "MddModelManager"

    const-string p3, "Start initialization"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqe;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqe;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;)V

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;->zzv(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqg;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;)V

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;Ljava/util/concurrent/Executor;)V

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroidx/work/Data;)Landroidx/work/ListenableWorker$Result;
    .locals 7

    const-string v0, "mddInstanceId"

    invoke-virtual {p1, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzt(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    move-result-object v4

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzu(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzs(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    move-result-object p0

    new-instance v0, Lcom/google/mlkit/common/model/DownloadConditions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/common/model/DownloadConditions$Builder;-><init>()V

    const-string v1, "requiresWifi"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/DownloadConditions$Builder;->requireWifi()Lcom/google/mlkit/common/model/DownloadConditions$Builder;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/mlkit/common/model/DownloadConditions$Builder;->build()Lcom/google/mlkit/common/model/DownloadConditions;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzv(Lcom/google/mlkit/common/model/DownloadConditions;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;

    const-string v0, "fileGroupId"

    invoke-virtual {p1, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MddModelManager"

    const-string v0, "Download worker future failed."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized zzs(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;
    .locals 10

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzc:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v9

    move-object v4, p0

    move-object v5, p5

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzek;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static zzt(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private static zzu(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzc(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    move-result-object p0

    return-object p0
.end method

.method private static zzv(Lcom/google/mlkit/common/model/DownloadConditions;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbd;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzba;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/mlkit/common/model/DownloadConditions;->isWifiRequired()Z

    move-result p0

    const/4 v1, 0x1

    if-eq v1, p0, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzba;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbd;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deleteDownloadedModel(Lcom/google/mlkit/common/model/RemoteModel;)Lcom/google/android/gms/tasks/Task;
    .locals 5

    const-string v0, "deleteDownloadedModel()"

    const-string v1, "MddModelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-static {v2}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deleteDownloadedModel(): deleting "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqi;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqj;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqk;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbql;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbql;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqm;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final download(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/model/DownloadConditions;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p2    # Lcom/google/mlkit/common/model/DownloadConditions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

    move-object v1, p1

    check-cast v1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    check-cast v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;

    invoke-virtual {v0, v1, p2}, Lcom/google/mlkit/vision/digitalink/downloading/zza;->zzf(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/mlkit/common/model/DownloadConditions;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MddModelManager"

    const-string v3, "download(): Download for model "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/mlkit/common/model/DownloadConditions;->isChargingRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/work/Constraints$Builder;

    invoke-direct {v2}, Landroidx/work/Constraints$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/mlkit/common/model/DownloadConditions;->isChargingRequired()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/work/Constraints$Builder;->setRequiresCharging(Z)Landroidx/work/Constraints$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v2

    new-instance v3, Landroidx/work/Data$Builder;

    invoke-direct {v3}, Landroidx/work/Data$Builder;-><init>()V

    const-string v4, "mddInstanceId"

    const-string v5, "mlkit_digital_ink_recognition"

    invoke-virtual {v3, v4, v5}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/mlkit/common/model/DownloadConditions;->isWifiRequired()Z

    move-result v4

    const-string v5, "requiresWifi"

    invoke-virtual {v3, v5, v4}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object v3

    invoke-static {v1}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "fileGroupId"

    invoke-virtual {v3, v4, v1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v1

    new-instance v3, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v4, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager$DownloadWorker;

    invoke-direct {v3, v4}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v1, v2}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzj:Landroidx/work/WorkManager;

    invoke-virtual {v2, v1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzj:Landroidx/work/WorkManager;

    invoke-virtual {v1}, Landroidx/work/WorkRequest;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/work/WorkManager;->getWorkInfoByIdLiveData(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zze:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqo;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqo;-><init>(Landroidx/lifecycle/LiveData;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqb;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpy;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/DownloadConditions;Lcom/google/mlkit/common/model/RemoteModel;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqh;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/model/DownloadConditions;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getDownloadedModels()Lcom/google/android/gms/tasks/Task;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpv;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final isModelDownloaded(Lcom/google/mlkit/common/model/RemoteModel;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    const-string v0, "MddModelManager"

    const-string v1, "isModelDownloadedAndValid()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpw;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpx;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Lcom/google/mlkit/common/model/RemoteModel;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    const-string v0, "MddModelManager"

    const-string v1, "getDownloadedFilesForModel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpu;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getDownloadedFilesForModel(): started"

    const-string v1, "MddModelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getDownloadedFilesForModel(): acquired result."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v2

    :goto_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    check-cast v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/mlkit/vision/digitalink/downloading/zza;->zzg(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;J)V

    const/4 p1, 0x0

    if-nez p3, :cond_1

    const-string p0, "getDownloadedFilesForModel(): Resulting file group empty."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_3

    const/4 p0, 0x3

    if-eq p2, p0, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    new-instance p1, Lcom/google/mlkit/vision/digitalink/downloading/zzc;

    invoke-direct {p1, p0, p3}, Lcom/google/mlkit/vision/digitalink/downloading/zzc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getDownloadedFilesForModel(): Resulting file not correctly downloaded. State: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getDownloadedModels(): Started."

    const-string v1, "MddModelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;->zza(ZJ)V

    if-nez p2, :cond_1

    const-string p0, "getDownloadedModels(): returned null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqc;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaim;->zza(Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;)Ljava/util/Collection;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaim;->zzb(Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zze(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    check-cast p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/mlkit/vision/digitalink/downloading/zza;->zzh(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;J)V

    const/4 p0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    if-ne p1, p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzf(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/model/DownloadConditions;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "download: complete"

    const-string v1, "MddModelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    move-object v0, p4

    move-object p4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p4

    move-object v0, v2

    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p4

    :goto_1
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzv;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzv;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzv;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    instance-of v8, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    if-eqz v8, :cond_3

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zza()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    :goto_4
    move-object v6, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    move-object v4, p1

    check-cast v4, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-object v3, p0

    check-cast v3, Lcom/google/mlkit/vision/digitalink/downloading/zza;

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/google/mlkit/vision/digitalink/downloading/zza;->zze(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/mlkit/common/model/DownloadConditions;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/util/List;J)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "download: returned with status "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 p1, 0x2

    if-eq p0, p1, :cond_6

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Download failed with status: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_5
    if-nez p4, :cond_8

    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "download: failed with exception: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw p4
.end method

.method public final synthetic zzg(Lcom/google/mlkit/common/model/RemoteModel;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;

    move-result-object p2

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzh(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfy;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfy;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzi(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    check-cast v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/mlkit/vision/digitalink/downloading/zza;->zzc(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;J)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "MddModelManager"

    if-eqz p1, :cond_0

    const-string p1, "deleteDownloadedModel()->removeFileGroup() succeeded, running maintenance()"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "deleteDownloadedModel()->removeFileGroup() failed"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzj(Ljava/lang/String;Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzk(Lcom/google/mlkit/common/model/RemoteModel;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;

    move-result-object p2

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzl(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;->zzb(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzm(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MddModelManager"

    const-string v2, "modelRegister initialized: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaim;->zzb(Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqa;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqa;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzn(Lcom/google/mlkit/common/model/RemoteModel;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;

    move-result-object p2

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbr;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzp(Lcom/google/mlkit/common/model/DownloadConditions;Lcom/google/mlkit/common/model/RemoteModel;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;

    move-result-object p3

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzv(Lcom/google/mlkit/common/model/DownloadConditions;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;

    check-cast p2, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-static {p2}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzq()Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;->zzc()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzr(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;Ljava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    check-cast p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mlkit/vision/digitalink/downloading/zza;->zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;J)V

    const-string p0, "MddModelManager"

    const-string p1, "deleteDownloadedModel()->maintenance() completed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
