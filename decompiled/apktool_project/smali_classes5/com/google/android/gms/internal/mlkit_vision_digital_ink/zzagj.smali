.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagj;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzb()Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method
