.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:[I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method private constructor <init>([I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;-><init>(IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    return-void
.end method

.method public static zzb([I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;-><init>([I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_8

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf:I

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    aget v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    move-object v4, v3

    :goto_2
    iget v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf:I

    if-lez v5, :cond_7

    iget v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget-object v5, v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    invoke-direct {v5, v1, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;-><init>(IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget-object v6, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc()V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    :cond_2
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd()V

    goto/16 :goto_3

    :cond_3
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget-object v7, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    iget v8, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget v7, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    iget v8, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    add-int/2addr v7, v8

    aget v5, v5, v7

    if-ne v5, v2, :cond_5

    if-eqz v4, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd()V

    goto :goto_3

    :cond_5
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget-object v5, v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    iget v8, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget v8, v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    iget v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v7, v8, v9, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;-><init>(IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;)V

    iget-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget-object v8, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    iget v10, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    iget v10, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzb:I

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzb:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    if-eqz v4, :cond_6

    iput-object v7, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    :cond_6
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    invoke-direct {v4, v1, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;-><init>(IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;)V

    iget-object v5, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc()V

    move-object v4, v7

    goto/16 :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method private final zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;Ljava/lang/StringBuilder;)V
    .locals 6

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " [label=\""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    array-length v4, v2

    iget v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzb:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"]\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzf(IIII)Z
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    if-gez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    array-length v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    array-length v1, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    sub-int v1, p2, p1

    sub-int/2addr p4, p3

    if-ne v1, p4, :cond_3

    move p4, p1

    :goto_0
    if-gt p4, p2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    aget v2, v1, p4

    add-int v3, p3, p4

    sub-int/2addr v3, p1

    aget v1, v1, v3

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "digraph {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;Ljava/lang/StringBuilder;)V

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;
    .locals 14

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;IIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaec;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzb:I

    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzc:I

    iget v5, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    iget v6, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzb:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf(IIII)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzb:I

    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzc:I

    iget v5, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    add-int v6, v5, v4

    sub-int/2addr v6, v3

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;

    const/4 v10, 0x1

    iget v11, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    iget v12, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzb:I

    const/4 v13, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;IIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaec;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;

    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zza:I

    add-int/lit8 v10, v4, 0x1

    iget v11, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzb:I

    iget v12, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzc:I

    const/4 v13, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;IIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaec;)V

    :goto_2
    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zza:I

    iget v5, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zza:I

    if-ge v4, v5, :cond_3

    move-object v7, v3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    array-length v0, v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzc:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    const/4 v2, 0x0

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzb:I

    sub-int v5, v0, v4

    rem-int v5, v2, v5

    add-int/2addr v4, v5

    aget v3, v3, v4

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    :goto_3
    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzb:I

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5

    iget v5, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzb:I

    sub-int v6, v0, v5

    rem-int v6, v2, v6

    add-int/2addr v5, v6

    aget v5, v4, v5

    aget v4, v4, v3

    if-ne v5, v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaed;->zzb:I

    sub-int v3, v0, v1

    div-int/2addr v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;-><init>(III)V

    return-object p0
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzf:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd()V

    return-void
.end method

.method public final zzd()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    :cond_1
    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzb:I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    if-gt v1, v2, :cond_2

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzd:I

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zze:I

    if-lez v2, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    goto :goto_0

    :cond_2
    return-void
.end method
