.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;

.field private static final zzd:[Ljava/lang/Object;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field final transient zzc:[Ljava/lang/Object;

.field private final transient zze:I

.field private final transient zzf:I

.field private final transient zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzd:[Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zze:I

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzc:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzf:I

    iput p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzg:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzc:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajd;->zzb(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzf:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zze:I

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzt(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaly;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzg:I

    return p0
.end method

.method public final zzb([Ljava/lang/Object;I)I
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzb:[Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzg:I

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzg:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzg:I

    return p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzb:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzg:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzh([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzt(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaly;

    move-result-object p0

    return-object p0
.end method

.method public final zzm()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzn()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zzb:[Ljava/lang/Object;

    return-object p0
.end method

.method public final zzr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
