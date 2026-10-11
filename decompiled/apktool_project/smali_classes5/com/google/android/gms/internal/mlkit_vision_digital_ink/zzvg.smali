.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 11

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;->zzl()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;->zzf(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "|"

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzg(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "w"

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvg;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "c"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvg;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;->zza(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {p1, v3, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;->zza(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzg(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;

    :cond_2
    return-object p2
.end method
