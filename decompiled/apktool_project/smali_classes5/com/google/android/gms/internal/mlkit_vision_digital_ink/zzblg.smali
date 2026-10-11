.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;
.source "SourceFile"


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Ljava/lang/reflect/Method;

.field final synthetic zzc:Ljava/lang/reflect/Field;

.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

.field final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

.field final synthetic zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

.field final synthetic zzg:Z

.field final synthetic zzh:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;ZZ)V
    .locals 0

    iput-boolean p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zza:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzb:Ljava/lang/reflect/Method;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzc:Ljava/lang/reflect/Field;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzg:Z

    iput-boolean p14, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzh:Z

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;I[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbic;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzg:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbic;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;->zzj:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null is not allowed as value for record component \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' of primitive type; at path "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbic;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    aput-object v0, p3, p2

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzg:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zza:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzc:Ljava/lang/reflect/Field;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzb(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzh:Z

    if-nez v0, :cond_3

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzc:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;->zzc:Ljava/lang/reflect/Field;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zzd(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot set value of \'static final\' "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;-><init>(Ljava/lang/String;)V

    throw p1
.end method
