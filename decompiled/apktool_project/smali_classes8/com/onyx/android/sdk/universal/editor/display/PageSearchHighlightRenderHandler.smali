.class public final Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageSearchHighlightRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageSearchHighlightRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,262:1\n526#2:263\n511#2,6:264\n526#2:270\n511#2,6:271\n215#3,2:277\n215#3,2:279\n215#3,2:296\n1#4:281\n1855#5:282\n1855#5,2:283\n1856#5:285\n1855#5,2:294\n1855#5,2:298\n121#6,8:286\n*S KotlinDebug\n*F\n+ 1 PageSearchHighlightRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler\n*L\n67#1:263\n67#1:264,6\n68#1:270\n68#1:271,6\n69#1:277,2\n80#1:279,2\n219#1:296,2\n134#1:282\n138#1:283,2\n134#1:285\n197#1:294,2\n250#1:298,2\n151#1:286,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008^\u0010_J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002J*\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\u001c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00192\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0002J\u0016\u0010\u001c\u001a\u00020\u00042\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0016J\u0018\u0010&\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0016J\u0008\u0010\'\u001a\u00020\u0004H\u0016J$\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010)\u001a\u00020(2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0016J$\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010)\u001a\u00020(2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0016J$\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010)\u001a\u00020(2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0016J\u001c\u00101\u001a\u0006\u0012\u0002\u0008\u00030\u00192\u0006\u0010.\u001a\u00020-2\u0006\u00100\u001a\u00020/H\u0016J\u0018\u00103\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00102\u001a\u00020$H\u0016J\u0012\u00106\u001a\u0004\u0018\u00010\u00062\u0006\u00105\u001a\u000204H\u0016J\u0016\u00108\u001a\u00020$2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0017H\u0016J\u0008\u00109\u001a\u00020$H\u0016J\u0016\u0010<\u001a\u00020\u00042\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u0002040:H\u0016J\u0008\u0010=\u001a\u00020\u0004H\u0016J\u0014\u0010@\u001a\u00020\u00042\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u0002040>J\u0008\u0010A\u001a\u000204H\u0016R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010I\u001a\u00020F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0014\u0010M\u001a\u00020J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR2\u0010R\u001a\u001e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u00060Nj\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0006`O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR&\u0010W\u001a\u0014\u0012\u0004\u0012\u000204\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0T0S8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010Z\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0018\u0010]\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\\u00a8\u0006`"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;",
        "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
        "pageNodeInfo",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "searchBean",
        "Landroid/graphics/PorterDuffXfermode;",
        "j",
        "Landroid/graphics/Canvas;",
        "canvas",
        "i",
        "Landroid/graphics/Matrix;",
        "pageScaleMatrix",
        "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
        "currentRegion",
        "Landroid/graphics/RectF;",
        "selectedRegionRect",
        "h",
        "",
        "visibleBoxList",
        "Lio/reactivex/rxjava3/core/Observable;",
        "m",
        "boxList",
        "k",
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;",
        "region",
        "setSelectedSearchRegion",
        "onDraw",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "draw",
        "",
        "visible",
        "setPageVisible",
        "clearDisplay",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "createDisplayScalingBoxListObservable",
        "createDisplayScrollingBoxListObservable",
        "createDisplayBoxListObservable",
        "Landroid/view/View;",
        "hostView",
        "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
        "args",
        "animateBoxChange",
        "forceUpdate",
        "updateExistsRenderNode",
        "",
        "pageId",
        "getPageRenderNodeInfo",
        "list",
        "addNoteSearchBeanList",
        "clearNoteSearchBeanList",
        "",
        "keepList",
        "evict",
        "destroy",
        "",
        "keys",
        "discardDisplayList",
        "getDisplayDebugString",
        "Landroid/graphics/Paint;",
        "a",
        "Landroid/graphics/Paint;",
        "highlightFillPaint",
        "",
        "b",
        "I",
        "selectedRegionHighlightColor",
        "",
        "c",
        "F",
        "roundCornerRadius",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "d",
        "Ljava/util/LinkedHashMap;",
        "pageRenderNodeMap",
        "",
        "",
        "e",
        "Ljava/util/Map;",
        "searchHighlightMap",
        "f",
        "Z",
        "isAnimating",
        "g",
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;",
        "selectedSearchRegion",
        "<init>",
        "()V",
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
        "SMAP\nPageSearchHighlightRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageSearchHighlightRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,262:1\n526#2:263\n511#2,6:264\n526#2:270\n511#2,6:271\n215#3,2:277\n215#3,2:279\n215#3,2:296\n1#4:281\n1855#5:282\n1855#5,2:283\n1856#5:285\n1855#5,2:294\n1855#5,2:298\n121#6,8:286\n*S KotlinDebug\n*F\n+ 1 PageSearchHighlightRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler\n*L\n67#1:263\n67#1:264,6\n68#1:270\n68#1:271,6\n69#1:277,2\n80#1:279,2\n219#1:296,2\n134#1:282\n138#1:283,2\n134#1:285\n197#1:294,2\n250#1:298,2\n151#1:286,8\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:F

.field public d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public g:Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getHighlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->a:Landroid/graphics/Paint;

    sget v0, Lcom/onyx/android/sdk/base/R$color;->orange_percent_60:I

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->b:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->c:F

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->n(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V

    return-void
.end method

.method public static final synthetic access$getPageRenderNodeMap$p(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$prepareDisplayBoxList(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->k(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$refreshPage(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->o(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->f:Z

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->p(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->g(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final g(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->f:Z

    return-void
.end method

.method public static final l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    return-object p0
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final p(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    return-object p0
.end method


# virtual methods
.method public addNoteSearchBeanList(Ljava/util/List;)Z
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$addNoteSearchBeanList$map$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$addNoteSearchBeanList$map$1;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$addNoteSearchBeanList$map$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$addNoteSearchBeanList$map$2;

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMapList(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$addNoteSearchBeanList$1$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$addNoteSearchBeanList$1$1;

    new-instance v5, Lcom/sunia/HTREnginev2/auk;

    invoke-direct {v5, v4}, Lcom/sunia/HTREnginev2/auk;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->discardDisplayList(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public addRenderer(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->addRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;)V

    return-void
.end method

.method public animateBoxChange(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->f:Z

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$a;

    invoke-direct {v1, p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$b;

    invoke-direct {v1, v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$b;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$c;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$c;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/ytk;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/ytk;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public cancelAllRenderRequest()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->cancelAllRenderRequest(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public clearDisplay()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->discardDisplayList(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public clearNoteSearchBeanList()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->discardDisplayList(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1
    return v0
.end method

.method public clearRenderer()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->clearRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public clearShapeFlushInfo()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->clearShapeFlushInfo(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "visibleBoxList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->clearDisplay()V

    return-void
.end method

.method public final discardDisplayList(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public displayBoxList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->displayBoxList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public draw(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->i(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)V

    neg-float v1, v2

    neg-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public evict(Ljava/util/Set;)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keepList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evict, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    move-result p0

    return p0
.end method

.method public getDisplayDebugString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageRenderNodeMap.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchHighlightMap.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPageRenderNodeInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    return-object p0
.end method

.method public getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->getPageSliceInfo(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/SelectionRegion;Landroid/graphics/RectF;)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/Matrix;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->concat([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p4, v2, v0, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->approximatelyEqualsTo$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Z

    move-result p4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->a:Landroid/graphics/Paint;

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->b:I

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getHighlightColor()I

    move-result p4

    :goto_0
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p4

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :try_start_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->c:F

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final i(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->g:Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getPageId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v2

    :goto_3
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->j(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Landroid/graphics/PorterDuffXfermode;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v4, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->allSortedHighlightRegions(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/SelectionRegion;

    invoke-virtual {p0, p2, v1, v4, v3}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/SelectionRegion;Landroid/graphics/RectF;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method public invalidateNotVisiblePagesIf(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->invalidateNotVisiblePagesIf(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/Collection;)V

    return-void
.end method

.method public invalidateSliceByPages(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->invalidateSliceByPages(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/Collection;)V

    return-void
.end method

.method public isEnabledPageBorder(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->isEnabledPageBorder(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Landroid/graphics/PorterDuffXfermode;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->isPageDarkTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-object p0
.end method

.method public final k(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->evict(Ljava/util/Set;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$prepareDisplayBoxList$1$1;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$prepareDisplayBoxList$1$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    new-instance v0, Lcom/sunia/HTREnginev2/xtk;

    invoke-direct {v0, v3}, Lcom/sunia/HTREnginev2/xtk;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->log(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public log(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->log(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public logW(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->logW(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    move-result p0

    return p0
.end method

.method public final m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->evict(Ljava/util/Set;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$d;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/buk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/buk;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnComplete(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$refreshPage$pageNodeInfo$1;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler$refreshPage$pageNodeInfo$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    new-instance v3, Lcom/sunia/HTREnginev2/ztk;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/ztk;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "computeIfAbsent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->setVisible(Z)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->q(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->hasDisplayList()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no display list, re-record page render node, rn.id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v5

    invoke-interface {v5}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->q(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->drawInto(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->toRenderNodePositionRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->f:Z

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setPosition(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setClipToBounds(Z)V

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->beginRecording()Landroid/graphics/Canvas;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->i(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->endRecording()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->endRecording()V

    throw p0
.end method

.method public removeRenderer(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->removeRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public removeVerifyId(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->removeVerifyId(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
.end method

.method public rendererSize()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->rendererSize(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)I

    move-result p0

    return p0
.end method

.method public resizeCache(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->resizeCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method

.method public safeClearAllNoteSliceCache()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->safeClearAllNoteSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public safeClearAllSliceCache()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->safeClearAllSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public safeClearPageNoteSliceCache(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->safeClearPageNoteSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public setBackground(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->setBackground(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method

.method public setPageVisible(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isNeedUpdateRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public final setSelectedSearchRegion(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->g:Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    return-void
.end method

.method public updateExistsRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p1

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;->q(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    return-void
.end method
