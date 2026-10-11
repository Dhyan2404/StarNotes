.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 7

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;->zza()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;->zza()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;->zzb()Z

    move-result v6

    instance-of p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    if-eqz p3, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    goto :goto_2

    :cond_0
    instance-of p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    if-eqz p3, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object p0

    goto :goto_2

    :cond_1
    instance-of p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbie;

    const/4 v0, 0x0

    if-nez p3, :cond_3

    instance-of p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;

    if-eqz p3, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object p3, p0

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbie;

    move-object v1, p3

    :goto_0
    instance-of p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;

    if-eqz p3, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;

    move-object v2, p0

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbie;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;Z)V

    const/4 v6, 0x0

    :goto_2
    if-eqz p0, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object p0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object p0

    return-object p0
.end method
