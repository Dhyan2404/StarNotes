.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyr;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;

    move-result-object v0

    const-string v1, "mdd_pds_config"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;

    const-string v1, "LoggingState"

    const-string v2, "pb"

    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;->zza()Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zze(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;->zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;

    move-result-object p1

    const-string v0, "gms_icing_mdd_network_usage_monitor"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvg;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvg;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabj;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zze(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    const/4 v3, 0x1

    move-object v0, p1

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwa;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zze(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    const/4 v3, 0x1

    move-object v0, p1

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwa;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zze(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    const/4 v3, 0x2

    move-object v0, p1

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwa;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zze(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;

    const/4 v3, 0x2

    move-object v0, p1

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwa;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzask;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    move-result-object p0

    return-object p0
.end method
