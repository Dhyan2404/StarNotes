.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;Ljava/util/concurrent/Executor;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s: Adding file group %s"

    const-string v2, "ProtoDataStoreFileGroupsMetadata"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzg()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzm(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpq;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzow;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzow;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;Ljava/util/List;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpn;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpn;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpl;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpi;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzov;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzov;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpe;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpe;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpf;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzph;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzph;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    const-class v1, Ljava/io/IOException;

    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zzj(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzox;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzox;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoz;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    const-class v1, Ljava/io/IOException;

    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpo;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpo;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpb;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpc;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpd;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zzm(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpg;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpk;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    const-class v1, Ljava/io/IOException;

    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzn(Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpa;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpa;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpr;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
