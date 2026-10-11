.class public final Lcom/google/android/recaptcha/internal/zzfl;
.super Lcom/google/android/recaptcha/internal/zzfp;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final zza:I

.field private final zzb:Ljava/util/Queue;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzfp;-><init>()V

    if-ltz p1, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzfl;->zzb:Ljava/util/Queue;

    iput p1, p0, Lcom/google/android/recaptcha/internal/zzfl;->zza:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "maxSize (%s) must >= 0"

    invoke-static {v0, p1}, Lcom/google/android/recaptcha/internal/zzfi;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(I)Lcom/google/android/recaptcha/internal/zzfl;
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzfl;

    invoke-direct {v0, p0}, Lcom/google/android/recaptcha/internal/zzfl;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzfl;->zza:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzfn;->size()I

    move-result v0

    iget v2, p0, Lcom/google/android/recaptcha/internal/zzfl;->zza:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzfl;->zzb:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfl;->zzb:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/recaptcha/internal/zzfl;->zza:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzfn;->clear()V

    iget v1, p0, Lcom/google/android/recaptcha/internal/zzfl;->zza:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "number to skip cannot be negative"

    invoke-static {v1, v2}, Lcom/google/android/recaptcha/internal/zzff;->zzb(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/android/recaptcha/internal/zzfr;

    invoke-direct {v1, p1, v0}, Lcom/google/android/recaptcha/internal/zzfr;-><init>(Ljava/lang/Iterable;I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/recaptcha/internal/zzfs;->zza(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/recaptcha/internal/zzfs;->zza(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzfn;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfl;->zzb:Ljava/util/Queue;

    return-object p0
.end method

.method public final synthetic zzc()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfl;->zzb:Ljava/util/Queue;

    return-object p0
.end method

.method public final zzd()Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfl;->zzb:Ljava/util/Queue;

    return-object p0
.end method
