.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahu;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahu;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaht;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;I)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahu;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaht;->zzb:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaht;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahu;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza:Ljava/util/Iterator;

    check-cast v1, Ljava/util/ListIterator;

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahu;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahx;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahx;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahx;)I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahu;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaht;->zza()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final nextIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahs;->zza:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
