.class public final Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/geometry/data/SliceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rJ\u0016\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;",
        "",
        "()V",
        "DIRTY_RECT_EXPAND_RIGHT_BOTTOM",
        "",
        "createContent",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "virtualPageId",
        "",
        "boxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "dataPath",
        "rectFInPage",
        "Landroid/graphics/RectF;",
        "createContentNote",
        "createNote",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createContent(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "virtualPageId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "boxInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dataPath"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rectFInPage"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;->CONTENT:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setType$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;)V

    invoke-static {p0, p3}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setDataPath$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setBoxInfo$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-static {p0, p4}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setSliceRectFInPage$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iget p3, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setPageDisplayMatrix(Landroid/graphics/Matrix;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->generateCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setCacheKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createContentNote(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectFInPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;->createNote(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;->CONTENT_NOTE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setType$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->generateCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setCacheKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createNote(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "boxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rectFInPage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;->NOTE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setType$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setDataPath$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setBoxInfo$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->access$setSliceRectFInPage$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setPageDisplayMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->generateCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setCacheKey(Ljava/lang/String;)V

    return-object p0
.end method
