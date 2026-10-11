.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafg;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafl;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/BitSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafe;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x40

    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafg;->zza:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/util/BitSet;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafg;->zza:Ljava/util/BitSet;

    invoke-virtual {p1, p0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method public final zzc(C)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafg;->zza:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method
