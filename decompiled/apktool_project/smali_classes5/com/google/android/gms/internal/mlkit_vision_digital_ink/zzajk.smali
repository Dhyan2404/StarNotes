.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
.source "SourceFile"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    return-void
.end method

.method private final zzu(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zzu(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zzu(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zzu(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzd(II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    return-object p0
.end method

.method public final zzd(II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzi(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    sub-int/2addr v1, p2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzd(II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    return-object p0
.end method

.method public final zzm()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;->zzm()Z

    move-result p0

    return p0
.end method
