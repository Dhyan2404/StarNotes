.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrx;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrx;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;I)V

    return-object p1
.end method

.method private static zzf(Ljava/lang/Integer;)I
    .locals 0
    .param p0    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazz;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgw;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgw;->zze()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NA"

    return-object p0
.end method

.method public final zzb(IZ)[B
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzh(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;->zzK()[B

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbou;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbou;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgw;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzh(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zzb()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzi(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zzc()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zzf(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zzd()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zzf(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zzl(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbow;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbgv;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazp;->zza(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazy;

    return-object p0
.end method
