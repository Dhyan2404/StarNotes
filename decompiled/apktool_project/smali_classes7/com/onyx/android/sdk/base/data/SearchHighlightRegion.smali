.class public final Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchHighlightRegion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHighlightRegion.kt\ncom/onyx/android/sdk/base/data/SearchHighlightRegion\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n364#2:85\n1#3:86\n*S KotlinDebug\n*F\n+ 1 SearchHighlightRegion.kt\ncom/onyx/android/sdk/base/data/SearchHighlightRegion\n*L\n22#1:85\n22#1:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001b\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;",
        "",
        "()V",
        "matrix",
        "Landroid/graphics/Matrix;",
        "getMatrix",
        "()Landroid/graphics/Matrix;",
        "setMatrix",
        "(Landroid/graphics/Matrix;)V",
        "pageId",
        "",
        "getPageId",
        "()Ljava/lang/String;",
        "setPageId",
        "(Ljava/lang/String;)V",
        "pageIndex",
        "",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "rect",
        "Landroid/graphics/RectF;",
        "getRect",
        "()Landroid/graphics/RectF;",
        "setRect",
        "(Landroid/graphics/RectF;)V",
        "transformedRect",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchHighlightRegion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHighlightRegion.kt\ncom/onyx/android/sdk/base/data/SearchHighlightRegion\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n364#2:85\n1#3:86\n*S KotlinDebug\n*F\n+ 1 SearchHighlightRegion.kt\ncom/onyx/android/sdk/base/data/SearchHighlightRegion\n*L\n22#1:85\n22#1:86\n*E\n"
    }
.end annotation


# instance fields
.field private matrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageIndex:I

.field private rect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->pageId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->pageIndex:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->pageIndex:I

    return p0
.end method

.method public final getRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->pageIndex:I

    return-void
.end method

.method public final setRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public final transformedRect()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->rect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method
