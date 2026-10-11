.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzh(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 4

    const-string p0, "-_@=,;"

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaff;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaff;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafk;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafk;-><init>(CC)V

    return-object v1

    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;-><init>(C)V

    return-object v0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;

    return-object p0
.end method

.method public static zzi(CC)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;-><init>(CC)V

    return-object v0
.end method

.method public static zzj(C)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;-><init>(C)V

    return-object v0
.end method

.method public static synthetic zzn(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method private static zzo(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v0

    const/16 v1, 0x3ff

    if-gt p0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x40

    if-le v0, p0, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zzp(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafg;-><init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafe;)V

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    int-to-char p0, p0

    add-int/lit8 p2, p0, 0x1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    int-to-char p1, p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafk;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafk;-><init>(CC)V

    return-object p2

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    int-to-char p0, p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;-><init>(C)V

    return-object p1

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzc(C)Z

    move-result p0

    return p0
.end method

.method public zzb(Ljava/util/BitSet;)V
    .locals 2

    const v0, 0xffff

    :goto_0
    if-ltz v0, :cond_1

    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzc(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract zzc(C)Z
.end method

.method public zzd(Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzc(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public zze(Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzf(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public zzf(Ljava/lang/CharSequence;I)I
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "index"

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzb(IILjava/lang/String;)I

    :goto_0
    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzc(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public zzg(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zze(Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;)V

    return-object v0
.end method

.method public zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagf;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    move-result-object p0

    return-object p0
.end method

.method public final zzm()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 6

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzb(Ljava/util/BitSet;)V

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    add-int v2, v1, v1

    const/high16 v3, 0x10000

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzo(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->flip(II)V

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".negate()"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x9

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafe;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzo(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    move-result-object v0

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafe;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;Ljava/lang/String;)V

    return-object v4
.end method
