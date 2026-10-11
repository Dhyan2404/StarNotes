.class public final Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextExcerptCreationRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextExcerptCreationRenderer.kt\ncom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n*S KotlinDebug\n*F\n+ 1 TextExcerptCreationRenderer.kt\ncom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer\n*L\n30#1:36,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "downVirtualBoxInfo",
        "",
        "initPaint",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "selection",
        "lowLatencyRender",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroid/graphics/Paint;",
        "b",
        "Landroid/graphics/Paint;",
        "strokePaint",
        "c",
        "fillPaint",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextExcerptCreationRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextExcerptCreationRenderer.kt\ncom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n*S KotlinDebug\n*F\n+ 1 TextExcerptCreationRenderer.kt\ncom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer\n*L\n30#1:36,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final initPaint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downVirtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->createStrokePaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isCurDarkTheme(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->createFillPaint(Z)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public final lowLatencyRender(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method
