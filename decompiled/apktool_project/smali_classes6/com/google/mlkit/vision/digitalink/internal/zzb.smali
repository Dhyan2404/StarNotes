.class public final Lcom/google/mlkit/vision/digitalink/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public final d:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

.field public e:J

.field public f:Z

.field public final synthetic g:Lcom/google/mlkit/vision/digitalink/internal/zzc;

.field public final h:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/digitalink/internal/zzc;ILcom/google/mlkit/vision/digitalink/internal/zza;)V
    .locals 2

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->g:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->c:I

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->e:J

    iput-boolean p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->f:Z

    iput p2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->h:I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->d:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    return-void
.end method

.method public static final a(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;
    .locals 3

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/Ink;->getStrokes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/digitalink/Ink$Stroke;

    invoke-virtual {v2}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatr;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    return-object p0
.end method

.method public final declared-synchronized zzc(Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionResult;J)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->c:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->b()Ljava/util/Random;

    move-result-object v0

    iget v2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->c:I

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-lt v0, v1, :cond_1

    monitor-exit p0

    return-object p0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatl;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatk;

    move-result-object v1

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatk;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatk;

    invoke-virtual {p2}, Lcom/google/mlkit/vision/digitalink/RecognitionResult;->getCandidates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;

    invoke-virtual {v4}, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatt;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzats;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/mlkit/vision/digitalink/RecognitionResult;->getCandidates()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzats;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzats;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzats;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzats;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatk;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzats;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatk;

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatk;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatl;

    iget-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    iget-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd()Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->c:I

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    :cond_0
    iput-boolean v1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zze()Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzd()Lcom/google/mlkit/vision/digitalink/internal/zzb;

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->d:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzf()Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->d:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zze()Lcom/google/mlkit/vision/digitalink/internal/zzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzd(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    return-object p0
.end method

.method public final zzh(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 0

    const-wide/16 p1, 0x1e

    iput-wide p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->e:J

    return-object p0
.end method

.method public final zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatp;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->getModelIdentifier()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    move-result-object p1

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatn;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatm;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatm;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    return-object p0
.end method

.method public final zzj(Lcom/google/mlkit/vision/digitalink/internal/zzo;)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatj;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzati;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/internal/zzo;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzati;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzati;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/internal/zzo;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagc;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagc;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzati;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzati;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagc;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagc;->zzb:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzati;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzati;

    :cond_0
    iget-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzati;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    return-object p0
.end method

.method public final zzk(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatv;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatu;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zzb()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    return-object p0
.end method

.method public final zzl(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    return-object p0
.end method

.method public final zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    return-object p0
.end method

.method public final declared-synchronized zzn()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzate;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatd;

    move-result-object v1

    iget v2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->c:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatd;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatd;

    iget-object v2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatd;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->g:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->a(Lcom/google/mlkit/vision/digitalink/internal/zzc;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazz;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    iget-object v3, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbud;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtp;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbud;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;

    move-result-object v1

    iget v2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzb;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
