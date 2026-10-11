.class public final Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00081\u00102J\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0014\u0010\n\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000bJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0016\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u00100\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u001e\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;",
        "getBkGroundBean",
        "bkGroundBean",
        "setBkGroundBean",
        "Lio/reactivex/rxjava3/functions/Predicate;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getShapeFilter",
        "shapeFilter",
        "setShapeFilter",
        "",
        "isWriteOnlyVisible",
        "writeOnlyVisible",
        "setWriteOnlyVisible",
        "Landroid/graphics/Matrix;",
        "getRenderMatrix",
        "renderMatrix",
        "setRenderMatrix",
        "Landroid/graphics/Rect;",
        "embedRect",
        "setEmbedRect",
        "getEmbedRect",
        "shape",
        "testShapeFilter",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;",
        "b",
        "Lio/reactivex/rxjava3/functions/Predicate;",
        "c",
        "Z",
        "d",
        "Landroid/graphics/Matrix;",
        "e",
        "Landroid/graphics/Rect;",
        "",
        "f",
        "I",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "pageIndex",
        "g",
        "getRenderOutOfPageShape",
        "()Z",
        "setRenderOutOfPageShape",
        "(Z)V",
        "renderOutOfPageShape",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lio/reactivex/rxjava3/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Z

.field public d:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->e:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->g:Z

    return-void
.end method


# virtual methods
.method public final getBkGroundBean()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->a:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;

    return-object p0
.end method

.method public final getEmbedRect()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->e:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->f:I

    return p0
.end method

.method public final getRenderMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->d:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getRenderOutOfPageShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->g:Z

    return p0
.end method

.method public final getShapeFilter()Lio/reactivex/rxjava3/functions/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->b:Lio/reactivex/rxjava3/functions/Predicate;

    return-object p0
.end method

.method public final isWriteOnlyVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->c:Z

    return p0
.end method

.method public final setBkGroundBean(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->a:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;

    return-object p0
.end method

.method public final setEmbedRect(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "embedRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->e:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->f:I

    return-void
.end method

.method public final setRenderMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->d:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final setRenderOutOfPageShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->g:Z

    return-void
.end method

.method public final setShapeFilter(Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/functions/Predicate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->b:Lio/reactivex/rxjava3/functions/Predicate;

    return-object p0
.end method

.method public final setWriteOnlyVisible(Z)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->c:Z

    return-object p0
.end method

.method public final testShapeFilter(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->getShapeFilter()Lio/reactivex/rxjava3/functions/Predicate;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->testSafety(Lio/reactivex/rxjava3/functions/Predicate;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
