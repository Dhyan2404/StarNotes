.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzand;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 2
    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanm;->zzc()Ljava/util/Set;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;

    move-result-object v7

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;-><init>(Ljava/lang/String;ZZLjava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZLjava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zzb:Ljava/util/logging/Level;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zzc:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzami;
    .locals 10

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanm;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zza:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zzb:Ljava/util/logging/Level;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zzc:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanm;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanl;)V

    return-object v9
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;
    .locals 8

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zzc:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanj;-><init>(Ljava/lang/String;ZZLjava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;)V

    return-object p1
.end method
