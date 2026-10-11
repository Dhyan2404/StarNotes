.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbmk;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;-><init>()V

    return-void
.end method

.method private static final zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn()V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbia;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbia;

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzs()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzi()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjv;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk()V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbib;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbib;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj()V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbmk;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbmk;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    move-result-object p0

    goto :goto_5

    :cond_0
    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzq()Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbib;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbmk;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbmk;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    instance-of v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;

    if-eqz v4, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;)V

    goto :goto_3

    :cond_4
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbib;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbib;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;)V

    :goto_3
    if-eqz v3, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl()V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm()V

    :goto_4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    goto :goto_0

    :cond_7
    move-object p0, v0

    :goto_5
    return-object p0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbmk;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbia;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;->zze()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;->zza()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zzg(Ljava/lang/Number;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;->zzd()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;->zzc()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zzi(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbid;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    return-void

    :cond_3
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhw;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbmk;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    return-void

    :cond_5
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbib;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbib;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbib;->zza()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbmk;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Couldn\'t write "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    return-void
.end method
