.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

.field public final synthetic zzb:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzum;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzum;->zzb:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzum;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzum;->zzb:Landroid/net/Uri;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
