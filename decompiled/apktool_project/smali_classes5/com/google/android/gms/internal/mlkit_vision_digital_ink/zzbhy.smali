.class public Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;->zzj(Z)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzV:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-virtual {v2, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
