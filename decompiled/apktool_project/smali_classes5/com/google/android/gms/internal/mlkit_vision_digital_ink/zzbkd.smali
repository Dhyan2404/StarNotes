.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final zze:Ljava/util/Comparator;


# instance fields
.field zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

.field zzb:I

.field zzc:I

.field final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

.field private final zzf:Ljava/util/Comparator;

.field private final zzg:Z

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze:Ljava/util/Comparator;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzf:Ljava/util/Comparator;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg:Z

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze:Ljava/util/Comparator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Z)V
    .locals 7

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    goto :goto_5

    :cond_5
    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    :goto_5
    if-nez p2, :cond_e

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eqz v3, :cond_7

    iget v3, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    if-eqz v1, :cond_8

    iget v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_7

    :cond_9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    goto :goto_8

    :cond_a
    :goto_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    :goto_8
    if-eqz p2, :cond_d

    goto :goto_a

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    if-eqz p2, :cond_d

    goto :goto_a

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    if-nez p2, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    goto :goto_0

    :cond_e
    :goto_a
    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    :cond_0
    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-ne p0, p1, :cond_1

    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    return-void

    :cond_1
    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    return-void

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    iput-object p1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    if-eqz v3, :cond_3

    iget p0, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    goto :goto_1

    :cond_2
    move v3, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    if-eqz v2, :cond_3

    iget p0, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzh:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzh:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzh:Ljava/lang/Object;

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzh:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    return p0
.end method

.method public final zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzf:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze:Ljava/util/Comparator;

    if-ne v0, v3, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzf:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzf:Ljava/lang/Object;

    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :cond_2
    if-gez v4, :cond_3

    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v2

    :cond_6
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 p2, 0x1

    if-nez v1, :cond_9

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze:Ljava/util/Comparator;

    if-ne v0, v1, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, " is not Comparable"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg:Z

    const/4 v7, 0x0

    iget-object v10, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-object v5, v0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    goto :goto_6

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg:Z

    iget-object v10, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-object v5, v0

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    if-gez v4, :cond_a

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    goto :goto_5

    :cond_a
    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    :goto_5
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Z)V

    :goto_6
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    return-object v0
.end method

.method public final zzb(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzh:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Z)V

    :cond_0
    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Z)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    iget v1, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    iget v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    if-le v1, v4, :cond_1

    :goto_0
    iget-object v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p2

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Z)V

    iget-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eqz p2, :cond_4

    iget v1, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iget-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eqz p2, :cond_5

    iget v2, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzi:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    iput-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    iput-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    goto :goto_3

    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;)V

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Z)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    return-void
.end method
