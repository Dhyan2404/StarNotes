.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;",
        "",
        "Landroid/graphics/RectF;",
        "a",
        "Landroid/graphics/RectF;",
        "getRegion",
        "()Landroid/graphics/RectF;",
        "region",
        "Landroid/graphics/Matrix;",
        "b",
        "Landroid/graphics/Matrix;",
        "getMtx",
        "()Landroid/graphics/Matrix;",
        "mtx",
        "",
        "c",
        "F",
        "getCharacterSize",
        "()F",
        "characterSize",
        "",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;",
        "d",
        "Ljava/util/List;",
        "getShapes",
        "()Ljava/util/List;",
        "shapes",
        "<init>",
        "(Landroid/graphics/RectF;Landroid/graphics/Matrix;FLjava/util/List;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:F

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/Matrix;FLjava/util/List;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/Matrix;",
            "F",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mtx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->a:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->b:Landroid/graphics/Matrix;

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->c:F

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCharacterSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->c:F

    return p0
.end method

.method public final getMtx()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->b:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getRegion()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->d:Ljava/util/List;

    return-object p0
.end method
