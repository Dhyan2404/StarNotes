.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static zzb(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;-><init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaap;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zza:Ljava/util/List;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzt(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaly;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;Ljava/util/List;I)V

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaap;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaas;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaas;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;ILjava/util/List;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;ILjava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zza:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaau;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaau;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final synthetic zzd(Ljava/util/List;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaat;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaat;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;ILjava/util/List;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zzb:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zze(ILjava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zza:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaq;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqu;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqu;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
