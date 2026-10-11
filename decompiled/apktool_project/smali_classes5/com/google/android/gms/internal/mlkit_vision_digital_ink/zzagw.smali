.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;)V

    return-object v0
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzf(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;-><init>(C)V

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzags;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzags;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;)V

    return-object v0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzi(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzb:Z

    return p0
.end method

.method private final zzi(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagv;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;I)V

    return-object v0
.end method

.method public final zze(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final zzg(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzi(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
