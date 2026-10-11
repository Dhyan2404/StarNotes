.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;

.field private final zze:Landroid/net/Uri;

.field private final zzf:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzc:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zze:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyd;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzf:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzf:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzb()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zze:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    return-object p0
.end method

.method public final zze(Ljava/io/OutputStream;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zze:Landroid/net/Uri;

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyb;->zza(Ljava/util/List;Landroid/net/Uri;Ljava/io/OutputStream;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyb;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzc:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakf;->zza(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string p1, "wrapForAppend not supported by compress"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public final zzf(Ljava/io/InputStream;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zze:Landroid/net/Uri;

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;->zza(Ljava/util/List;Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzya;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzc:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakf;->zza(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public final zzg(Ljava/io/OutputStream;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zze:Landroid/net/Uri;

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyb;->zzb(Ljava/util/List;Landroid/net/Uri;Ljava/io/OutputStream;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyb;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzc:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaj;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakf;->zza(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public final zzh()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzc:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
