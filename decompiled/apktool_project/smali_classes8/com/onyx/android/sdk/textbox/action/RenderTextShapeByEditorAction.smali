.class public final Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;
.super Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction<",
        "Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0008H\u0014J\u0008\u0010\n\u001a\u00020\u0000H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008H\u0002R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;",
        "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "setTextShape",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "setRenderContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;",
        "n",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "f",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBoxView",
        "g",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Landroid/graphics/Bitmap;",
        "i",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/note/common/shape/Shape;

.field public h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

.field public i:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    return-void
.end method

.method public static final synthetic access$draw(Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;)Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->m()Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveToCache(Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction$a;-><init>(Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction$b;-><init>(Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction$c;-><init>(Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v1, :cond_0

    const-string v1, "textShape"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isVertical()Z

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getMode()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getRenderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getMode()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getRenderHeight()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    sget-object v5, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->Companion:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;->getORIENTATION_VERTICAL_ANGLE()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    int-to-float v5, v5

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidth()F

    move-result v1

    int-to-float v6, v2

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    sget-object v6, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {v6, v2, v3}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getLimitSize(II)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    div-float/2addr v6, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->i:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->i:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {v3, v5, v1, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;

    const-string v2, "drawing cache by editor!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->i:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->i:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->i:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v3, :cond_1

    const-string v3, "renderContext"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    iget-object v4, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v4, :cond_2

    const-string v4, "textShape"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->i:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;->setSize(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final setTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method
