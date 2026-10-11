.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxl;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;)V

    :cond_0
    return-void
.end method
