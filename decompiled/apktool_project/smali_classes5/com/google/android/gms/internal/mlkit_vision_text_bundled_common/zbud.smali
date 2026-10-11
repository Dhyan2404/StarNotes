.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtn;
.source "SourceFile"


# instance fields
.field final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

.field final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtn;-><init>()V

    if-eqz p1, :cond_2

    iget-object p1, p4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null messageDefaultInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null containingTypeDefaultInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
