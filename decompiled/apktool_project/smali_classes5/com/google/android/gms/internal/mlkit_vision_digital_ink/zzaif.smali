.class Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaif;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahx;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzals;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahx;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza()Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final synthetic zzb(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahx;->zzb(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahw;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahx;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method

.method public final synthetic zzu()Ljava/util/Collection;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaic;->zzu()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
