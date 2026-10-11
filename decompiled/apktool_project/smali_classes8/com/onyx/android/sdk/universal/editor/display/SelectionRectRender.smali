.class public final Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionRectRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionRectRender.kt\ncom/onyx/android/sdk/universal/editor/display/SelectionRectRender\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,405:1\n344#2,3:406\n1855#3,2:409\n13309#4,2:411\n*S KotlinDebug\n*F\n+ 1 SelectionRectRender.kt\ncom/onyx/android/sdk/universal/editor/display/SelectionRectRender\n*L\n149#1:406,3\n152#1:409,2\n231#1:411,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u00106\u001a\u000202\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010;\u001a\u00020\u0004\u0012\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008^\u0010_J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010!\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010%\u001a\u00020$2\u0006\u0010#\u001a\u00020\"H\u0002J\u0010\u0010\'\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\"H\u0002J\u0010\u0010(\u001a\u00020$2\u0006\u0010#\u001a\u00020\"H\u0002J\u0008\u0010)\u001a\u00020$H\u0002J\u0008\u0010*\u001a\u00020\"H\u0002J\u0010\u0010+\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010,\u001a\u00020$H\u0002J\"\u00100\u001a\u0004\u0018\u00010\u001f2\u0006\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\"2\u0006\u0010/\u001a\u00020\"H\u0002J\u0016\u00101\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0017\u00106\u001a\u0002028\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u00103\u001a\u0004\u00084\u00105R\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u00107R\u0017\u0010;\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u00080\u00108\u001a\u0004\u00089\u0010:R\u001a\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010>R\u0018\u0010@\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010>R\u0016\u0010D\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010>R\"\u0010J\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\"\u0010K\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010E\u001a\u0004\u0008K\u0010G\"\u0004\u0008L\u0010IR\u0014\u0010M\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010ER\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010RR\"\u0010Z\u001a\u00020T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\u0014\u0010]\u001a\u00020[8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010\\\u00a8\u0006`"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;",
        "",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "noteInfo",
        "",
        "l",
        "",
        "m",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "renderShapes",
        "g",
        "k",
        "n",
        "",
        "x",
        "y",
        "Landroid/graphics/Matrix;",
        "matrix",
        "Landroid/graphics/PointF;",
        "t",
        "o",
        "d",
        "j",
        "i",
        "f",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "pointF",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "e",
        "",
        "color",
        "Landroid/graphics/Paint;",
        "p",
        "resId",
        "a",
        "u",
        "r",
        "s",
        "b",
        "q",
        "drawableId",
        "width",
        "height",
        "c",
        "renderNote",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Ljava/util/List;",
        "shapeList",
        "Landroid/graphics/Paint;",
        "strokePaint",
        "fillPaint",
        "excerptFillPaint",
        "h",
        "excerptStrokePaint",
        "bitmapPaint",
        "Z",
        "getRenderingShapes",
        "()Z",
        "setRenderingShapes",
        "(Z)V",
        "renderingShapes",
        "isShowHandle",
        "setShowHandle",
        "isExcerptSelectionRect",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;",
        "selectionArgs",
        "Landroid/graphics/Path;",
        "Landroid/graphics/Path;",
        "tempPath",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "getTransformAction",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "setTransformAction",
        "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V",
        "transformAction",
        "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;",
        "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;",
        "guideLineRender",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V",
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
        "SMAP\nSelectionRectRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionRectRender.kt\ncom/onyx/android/sdk/universal/editor/display/SelectionRectRender\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,405:1\n344#2,3:406\n1855#3,2:409\n13309#4,2:411\n*S KotlinDebug\n*F\n+ 1 SelectionRectRender.kt\ncom/onyx/android/sdk/universal/editor/display/SelectionRectRender\n*L\n149#1:406,3\n152#1:409,2\n231#1:411,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public final l:Z

.field public final m:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
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
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->d:Ljava/util/List;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->i:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->k:Z

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p1, p4}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasExcerptShape(Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->l:Z

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->m:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->n:Landroid/graphics/Path;

    sget-object p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->o:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance p1, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->p:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    return-void
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->d:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->g(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->Companion:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;->getSELECTION_RECT_HANDLER_SIZE()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0, v0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->c(III)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final c(III)Landroid/graphics/Bitmap;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeVectorBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->o:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->hashCodeHexString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->getSelectionGuideLines(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->p:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->drawGuideLines$default(Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;Landroid/graphics/Canvas;Ljava/util/List;FILjava/lang/Object;)V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/PointF;Landroid/graphics/Bitmap;)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->Companion:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;->getSELECTION_RECT_HANDLER_SIZE()F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    iget v3, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v3, p3}, Lcom/onyx/android/sdk/base/utils/RectUtils;->translate(Landroid/graphics/RectF;FF)V

    int-to-float p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    invoke-static {v1, p3}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->r()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getLinePaintColor()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->u(I)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p4, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->k:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->isQuickCopyEnable()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCurrentRenderQuickCopyPoint(Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    sget v1, Lcom/onyx/android/sdk/universal/R$drawable;->ic_selection_quick_copy:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->e(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/PointF;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)Z"
        }
    .end annotation

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-direct {v0, v3, p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getShapeShaderManager()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, p0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setClipRect(Landroid/graphics/RectF;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterNormalShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearRender()V

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getRenderingShapes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->j:Z

    return p0
.end method

.method public final getTransformAction()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->o:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final i(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->k:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCurrentRenderRotationPoint(Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    sget v1, Lcom/onyx/android/sdk/universal/R$drawable;->ic_selection_rotation:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->e(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/PointF;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final isShowHandle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->k:Z

    return p0
.end method

.method public final j(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->getTransformRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->component2()F

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float v5, v3, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v6, v2, v4

    add-float/2addr v3, v4

    add-float/2addr v2, v4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v6, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->r()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->s()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->u(I)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->n:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->s()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->p(I)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->l:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->q()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->j:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->m(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->h(Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ILjava/lang/Object;)Z

    return-void
.end method

.method public final m(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->m:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->m:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->createRectWithIntSize(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToWidth(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->scaleTranslate(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v5

    mul-float/2addr v1, v5

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionRenderingShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->g(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final n(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->r()Landroid/graphics/Paint;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->s()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->u(I)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 13

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasTextShape(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->Companion:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;->getSELECTION_RECT_STRETCH_RECT_HEIGHT()F

    move-result v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;->getSELECTION_RECT_STRETCH_RECT_WIDTH()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->r()Landroid/graphics/Paint;

    move-result-object v2

    iget v7, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {p0, v7, v8, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->t(FFLandroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lcom/onyx/android/sdk/base/extension/PointFKt;->toRect(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget v9, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v8, v9, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->t(FFLandroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v8, v5, v4}, Lcom/onyx/android/sdk/base/extension/PointFKt;->toRect(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;

    move-result-object v8

    iget v9, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {p0, v9, v10, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->t(FFLandroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v9

    invoke-static {v9, v4, v5}, Lcom/onyx/android/sdk/base/extension/PointFKt;->toRect(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v10, v11, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->t(FFLandroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-static {p2, v5, v4}, Lcom/onyx/android/sdk/base/extension/PointFKt;->toRect(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;

    move-result-object p2

    sget v4, Lcom/onyx/android/sdk/universal/R$drawable;->selection_rect_drag_rect:I

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5, v5}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->c(III)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->getTransformRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->component2()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;->getSELECTION_RECT_STROKE_WIDTH()F

    move-result v3

    const/4 v6, 0x4

    new-array v10, v6, [Landroid/graphics/RectF;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v8, 0x1

    aput-object v9, v10, v8

    aput-object p2, v10, v5

    const/4 p2, 0x3

    aput-object v7, v10, p2

    :goto_0
    if-ge v11, v6, :cond_2

    aget-object p2, v10, v11

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v5, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v7, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    add-float/2addr v8, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    add-float/2addr v9, v1

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v5, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {p1, v0, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/16 v7, 0x5a

    int-to-float v7, v7

    add-float/2addr v0, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    int-to-float v7, v4

    sub-float/2addr p2, v7

    sub-float/2addr p2, v3

    invoke-virtual {p1, p0, v5, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final p(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->u(I)Landroid/graphics/Paint;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance p0, Landroid/graphics/DashPathEffect;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public final q()Landroid/graphics/Paint;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->g:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isCurDarkTheme(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->createFillPaint(Z)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->g:Landroid/graphics/Paint;

    :cond_0
    return-object v0
.end method

.method public final r()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->f:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->f:Landroid/graphics/Paint;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->f:Landroid/graphics/Paint;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final renderNote(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->l(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->k(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->n(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->o(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->j(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->i(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->f(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public final s()I
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->h:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->createStrokePaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemePrimaryColor()I

    move-result p0

    return p0
.end method

.method public final setRenderingShapes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->j:Z

    return-void
.end method

.method public final setShowHandle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->k:Z

    return-void
.end method

.method public final setTransformAction(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->o:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-void
.end method

.method public final t(FFLandroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p3, p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method public final u(I)Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->e:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->Companion:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;->getSELECTION_RECT_STROKE_WIDTH()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->e:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->e:Landroid/graphics/Paint;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
