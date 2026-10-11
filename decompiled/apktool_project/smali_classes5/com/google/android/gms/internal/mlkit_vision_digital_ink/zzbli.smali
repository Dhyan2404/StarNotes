.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zzi:Ljava/lang/String;

.field final zzj:Ljava/lang/String;

.field final zzk:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;->zzi:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;->zzj:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;->zzk:Z

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;I[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbic;
        }
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
