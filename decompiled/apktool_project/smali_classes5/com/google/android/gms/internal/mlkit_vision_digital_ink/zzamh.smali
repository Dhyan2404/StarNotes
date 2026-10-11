.class public interface abstract annotation Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "android_log_tag"

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;

    return-void
.end method
