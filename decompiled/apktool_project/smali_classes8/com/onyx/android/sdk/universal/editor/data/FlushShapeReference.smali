.class public final Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;",
        "",
        "shape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "flushPageCount",
        "",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V",
        "getFlushPageCount",
        "()I",
        "setFlushPageCount",
        "(I)V",
        "getShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "clearOnPageFlushFinish",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private flushPageCount:I

.field private final shape:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->flushPageCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/note/common/shape/Shape;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    return-void
.end method


# virtual methods
.method public final clearOnPageFlushFinish()Z
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->flushPageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->flushPageCount:I

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearLowLatencyData()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFlushPageCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->flushPageCount:I

    return p0
.end method

.method public final getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final setFlushPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->flushPageCount:I

    return-void
.end method
