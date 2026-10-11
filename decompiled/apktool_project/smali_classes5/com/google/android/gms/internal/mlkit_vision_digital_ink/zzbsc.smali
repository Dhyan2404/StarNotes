.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;->zzn()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;

    move-result-object p0

    return-object p0
.end method

.method public abstract zzn()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;
.end method

.method public abstract zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;
.end method

.method public final bridge synthetic zzp(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;->zzak()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method
