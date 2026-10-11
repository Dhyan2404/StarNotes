.class Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    return-void
.end method

.method private final zzb(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->size()I

    move-result p0

    const-string v0, "index"

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zza(IILjava/lang/String;)I

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->size()I

    move-result p0

    const-string v1, "index"

    invoke-static {p1, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzb(IILjava/lang/String;)I

    sub-int/2addr p0, p1

    invoke-interface {v0, p0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zzb(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->size()I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzb(IILjava/lang/String;)I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzako;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzako;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zzb(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final removeRange(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zzb(I)I

    move-result p0

    invoke-interface {v0, p0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzi(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->size()I

    move-result v1

    const-string v2, "index"

    invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzb(IILjava/lang/String;)I

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->size()I

    move-result p0

    invoke-static {p1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzb(IILjava/lang/String;)I

    sub-int/2addr p0, p1

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakq;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method final zza()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakp;->zza:Ljava/util/List;

    return-object p0
.end method
