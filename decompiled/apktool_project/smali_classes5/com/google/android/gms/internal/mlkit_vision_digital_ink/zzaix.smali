.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field transient zza:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient zzb:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient zzc:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient zzd:I

.field private transient zze:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzf(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzf(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    return p0
.end method

.method private final zzh()I
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    shl-int p0, v0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private final zzi(IIII)I
    .locals 8

    add-int/lit8 v0, p2, -0x1

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zze(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p4, :cond_0

    and-int/2addr p3, v0

    add-int/lit8 p4, p4, 0x1

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzg(Ljava/lang/Object;II)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    invoke-static {p3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzc(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, v0

    invoke-static {p2, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzc(Ljava/lang/Object;I)I

    move-result v7

    invoke-static {p2, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzg(Ljava/lang/Object;II)V

    not-int v2, v0

    and-int v6, v7, v0

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzj(I)V

    return v0
.end method

.method private final zzj(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    and-int/lit8 v0, v0, -0x20

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzg()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzg()Z

    move-result v2

    const-string v3, "Arrays already allocated"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzk(ZLjava/lang/Object;)V

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzd(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zze(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzj(I)V

    new-array v3, v2, [I

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    add-int/lit8 v6, v5, 0x1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajd;->zzb(Ljava/lang/Object;)I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzh()I

    move-result v8

    and-int v2, v7, v8

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzc(Ljava/lang/Object;I)I

    move-result v9

    if-nez v9, :cond_2

    if-le v6, v8, :cond_1

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zza(I)I

    move-result v2

    invoke-direct {v0, v8, v2, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzi(IIII)I

    move-result v8

    goto :goto_3

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzg(Ljava/lang/Object;II)V

    goto :goto_3

    :cond_2
    not-int v11, v8

    and-int v12, v7, v11

    const/4 v13, 0x0

    move v2, v13

    :goto_0
    add-int/lit8 v9, v9, -0x1

    aget v14, v3, v9

    and-int v15, v14, v11

    if-ne v15, v12, :cond_4

    aget-object v10, v4, v9

    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    return v13

    :cond_4
    :goto_1
    and-int v10, v14, v8

    const/4 v14, 0x1

    add-int/2addr v2, v14

    if-nez v10, :cond_9

    const/16 v4, 0x9

    if-lt v2, v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzh()I

    move-result v2

    add-int/2addr v2, v14

    new-instance v3, Ljava/util/LinkedHashSet;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4}, Ljava/util/LinkedHashSet;-><init>(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb()I

    move-result v2

    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc(I)I

    move-result v2

    goto :goto_2

    :cond_5
    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze()V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_6
    if-le v6, v8, :cond_7

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zza(I)I

    move-result v2

    invoke-direct {v0, v8, v2, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzi(IIII)I

    move-result v8

    goto :goto_3

    :cond_7
    and-int v2, v6, v8

    or-int/2addr v2, v15

    aput v2, v3, v9

    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v2

    if-le v6, v2, :cond_8

    ushr-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v2

    or-int/2addr v3, v4

    const v4, 0x3fffffff    # 1.9999999f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eq v3, v2, :cond_8

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    :cond_8
    not-int v2, v8

    and-int/2addr v2, v7

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput v2, v3, v5

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v1, v2, v5

    iput v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze()V

    const/4 v9, 0x1

    return v9

    :cond_9
    move v9, v10

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapu;->zza(III)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzf(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajd;->zzb(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzh()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzc(Ljava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_5

    not-int v4, v2

    and-int/2addr v0, v4

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, -0x1

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v6, v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    and-int v3, v5, v2

    if-nez v3, :cond_2

    :cond_5
    return v1
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzh()I

    move-result v0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    move-object v2, p1

    move v4, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc:[I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->size()I

    move-result v6

    add-int/2addr v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge p1, v6, :cond_4

    aget-object v9, v5, v6

    aput-object v9, v5, p1

    aput-object v7, v5, v6

    aget v5, v4, v6

    aput v5, v4, p1

    aput v1, v4, v6

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajd;->zzb(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, v0

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzc(Ljava/lang/Object;I)I

    move-result v5

    add-int/2addr v6, v8

    if-ne v5, v6, :cond_2

    add-int/2addr p1, v8

    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzg(Ljava/lang/Object;II)V

    goto :goto_1

    :cond_2
    :goto_0
    add-int/2addr v5, v2

    aget v1, v4, v5

    and-int v3, v1, v0

    if-ne v3, v6, :cond_3

    add-int/2addr p1, v8

    not-int v3, v0

    and-int/2addr v1, v3

    and-int/2addr p1, v0

    or-int/2addr p1, v1

    aput p1, v4, v5

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_0

    :cond_4
    aput-object v7, v5, p1

    aput v1, v4, p1

    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze()V

    return v8

    :cond_5
    return v1
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    :goto_0
    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    .line 4
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length p0, p1

    if-lez p0, :cond_0

    .line 6
    aput-object v1, p1, v2

    :cond_0
    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    .line 10
    array-length v3, v0

    invoke-static {v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzi(III)V

    .line 11
    array-length v3, p1

    if-ge v3, p0, :cond_3

    .line 12
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalk;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-le v3, p0, :cond_4

    .line 13
    aput-object v1, p1, p0

    .line 14
    :cond_4
    :goto_0
    invoke-static {v0, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public final zzb()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzc(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zze:I

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final zzd()Ljava/util/Set;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zze()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    return-void
.end method

.method public final zzf(I)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapu;->zza(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzd:I

    return-void
.end method

.method public final zzg()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
