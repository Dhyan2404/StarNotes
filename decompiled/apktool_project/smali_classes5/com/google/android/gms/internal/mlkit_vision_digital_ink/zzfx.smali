.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzei;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwi;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

.field private final zzj:Ljava/util/concurrent/Executor;

.field private final zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

.field private final zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzm:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

.field private final zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

.field private final zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;Ljava/util/concurrent/Executor;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    move-result-object p12

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzb:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzm:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwi;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfe;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfw;

    invoke-direct {p2, p9, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Landroid/content/Context;)V

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzb(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    return-void
.end method

.method public static final synthetic zzA(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzC(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    :cond_0
    return-object p0
.end method

.method private static zzB(Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    if-lez p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    return-object p0
.end method

.method private static zzC(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    return-object p0
.end method

.method private static zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3
    .param p0    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p3, 0x0

    if-nez p0, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzl(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzo()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zze()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zze(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzw()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzD()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzn()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzu()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    if-eq p2, v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    if-ne p2, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    move-result p4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzd()I

    move-result p5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzt()Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, p3

    :goto_1
    invoke-static {p2, p4, p5, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzB(Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p5, p0, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p7, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;-><init>(Ljava/util/List;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;)V

    invoke-virtual {p0, p2, p6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v1

    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfp;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;)V

    invoke-virtual {p0, p1, p6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfq;

    invoke-virtual {p0, p1, p2, p6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method private final zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;ZZZ)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzm()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzf()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    if-eqz p3, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    :goto_1
    move-object v2, p1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    move-object v0, p2

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzep;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzep;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method private static zzF(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzb(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzj(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzF(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, p2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    return-object p0
.end method

.method public static synthetic zzi(Ljava/util/List;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzz:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    const-string p1, "getDataFileUris() resolved to null"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :try_start_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzj(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzF(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzd()I

    move-result v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzt()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {v1, v2, v3, v4, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzB(Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to list files under directory:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzz(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;IJ)V
    .locals 0

    const/4 p2, 0x4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x3

    goto :goto_2

    :catchall_0
    move-exception p1

    instance-of p3, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p3, :cond_1

    const/4 p1, 0x5

    :goto_0
    move p3, p1

    goto :goto_1

    :cond_1
    instance-of p3, p1, Ljava/lang/InterruptedException;

    if-eqz p3, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    instance-of p3, p1, Ljava/io/IOException;

    if-eqz p3, :cond_3

    const/4 p1, 0x7

    goto :goto_0

    :cond_3
    instance-of p3, p1, Ljava/lang/IllegalStateException;

    if-eqz p3, :cond_4

    const/16 p1, 0x8

    goto :goto_0

    :cond_4
    instance-of p3, p1, Ljava/lang/IllegalArgumentException;

    if-eqz p3, :cond_5

    const/16 p1, 0x9

    goto :goto_0

    :cond_5
    instance-of p3, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p3, :cond_6

    const/16 p1, 0xa

    goto :goto_0

    :cond_6
    instance-of p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    if-eqz p1, :cond_7

    const/16 p1, 0xb

    goto :goto_0

    :cond_7
    move p3, p2

    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzC(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapm;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;

    invoke-virtual {p1, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfa;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzen;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzen;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 10

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzi;->zza()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zze(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;I[B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zze(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {v9, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v9
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzez;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzez;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzex;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzex;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzes;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzes;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "MobileDataDownload"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zza()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "null"

    move-object v4, v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s: Adding for download group = \'%s\', variant = \'%s\', buildId = \'%d\' and associating it with account = \'%s\', variant = \'%s\'"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzk()Z

    move-result v0

    const-string v1, "MobileDataDownload"

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zze()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zza:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzf()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Added group = \'%s\' with wrong owner package: \'%s\' v.s. \'%s\' "

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;->zzK()[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzl([BLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    invoke-virtual {v2, v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: Unable to convert from DataFileGroup to DataFileGroupInternal."

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;->zzb()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzh()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;->zzK()[B

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;->zze([BLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfh;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasj;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasj;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfi;

    invoke-direct {v5, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeu;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfk;

    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasj;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfl;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfm;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfu;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzh()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeq;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    invoke-virtual {p3, p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzj()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Nothing to download for file group: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;->zzj()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeu;

    iget-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzev;

    const/4 p5, 0x0

    invoke-direct {p2, p0, p5, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzev;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfv;

    invoke-direct {p2, p0, p5, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;Ljava/util/concurrent/Executor;)V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzew;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzew;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzel;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzel;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p2

    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzem;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzem;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v3

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v4

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    const/4 p3, 0x0

    aput-object v3, p1, p3

    const/4 p3, 0x1

    aput-object v4, p1, p3

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwx;->zzb([Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzww;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfb;

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzww;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;->zze()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;ZZZ)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeo;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbs;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzl()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zzg()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;ZZZ)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfs;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzv(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzff;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzff;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfg;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzw(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzx(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzer;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzer;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzy(JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;I)V
    .locals 11

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzi;->zza()J

    move-result-wide v0

    sub-long v8, v0, p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;

    const/4 v7, 0x4

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;IJ[B)V

    move-object v1, p0

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zze(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzk(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    return-void
.end method
