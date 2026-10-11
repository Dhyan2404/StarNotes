.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkv;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkq;
.source "SourceFile"


# instance fields
.field private final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkv;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    return-void
.end method


# virtual methods
.method public final zba(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkv;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
