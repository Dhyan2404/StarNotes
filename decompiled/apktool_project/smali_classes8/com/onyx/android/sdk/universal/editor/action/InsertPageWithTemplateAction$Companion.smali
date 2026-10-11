.class public final Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInsertPageWithTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertPageWithTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;",
        "",
        "()V",
        "findTemplateRectPageByPreviousPage",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "fromPageIndex",
        "",
        "initTemplateRectByPreviousPage",
        "",
        "insertPageArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "scaleToWidth",
        "",
        "targetRect",
        "Landroid/graphics/RectF;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInsertPageWithTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertPageWithTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findTemplateRectPageByPreviousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    const/4 p0, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p2

    invoke-interface {p2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageCount()I

    move-result p2

    const/4 v0, 0x0

    if-ge p0, p2, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p2

    add-int/lit8 v1, p0, 0x1

    invoke-interface {p2, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->isCoverPage(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    move-object v0, p0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final initTemplateRectByPreviousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insertPageArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getInsertAt()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;->findTemplateRectPageByPreviousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;->scaleToWidth(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;Landroid/graphics/RectF;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final scaleToWidth(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "insertPageArgs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p0, p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method
