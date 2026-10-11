.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/util/Set;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;->zza:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;->zza:Landroid/content/SharedPreferences;

    const-wide/16 p2, 0x0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabl;->zza:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object p0

    return-object p0
.end method
