.class public final Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeGuideLineRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeGuideLineRender.kt\ncom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,269:1\n215#2,2:270\n215#2,2:274\n1855#3,2:272\n1855#3,2:276\n1855#3,2:278\n1855#3,2:280\n1855#3:282\n1855#3,2:283\n1856#3:285\n1549#3:286\n1620#3,3:287\n1549#3:290\n1620#3,3:291\n766#3:294\n857#3:295\n858#3:297\n1855#3,2:298\n1855#3,2:308\n1855#3:310\n1855#3,2:311\n1856#3:313\n1855#3,2:314\n1549#3:316\n1620#3,3:317\n1549#3:320\n1620#3,3:321\n766#3:324\n857#3:325\n858#3:327\n1855#3,2:328\n1855#3,2:338\n1655#3,8:340\n637#4:296\n637#4:303\n637#4:326\n637#4:333\n526#5:300\n511#5,2:301\n513#5,4:304\n526#5:330\n511#5,2:331\n513#5,4:334\n*S KotlinDebug\n*F\n+ 1 ShapeGuideLineRender.kt\ncom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender\n*L\n121#1:270,2\n137#1:274,2\n130#1:272,2\n146#1:276,2\n184#1:278,2\n192#1:280,2\n220#1:282\n221#1:283,2\n220#1:285\n229#1:286\n229#1:287,3\n230#1:290\n230#1:291,3\n231#1:294\n231#1:295\n231#1:297\n232#1:298,2\n234#1:308,2\n243#1:310\n244#1:311,2\n243#1:313\n251#1:314,2\n261#1:316\n261#1:317,3\n262#1:320\n262#1:321,3\n263#1:324\n263#1:325\n263#1:327\n264#1:328,2\n266#1:338,2\n267#1:340,8\n231#1:296\n233#1:303\n263#1:326\n265#1:333\n233#1:300\n233#1:301,2\n233#1:304,4\n265#1:330\n265#1:331,2\n265#1:334,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008E\u0010FJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J.\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eJJ\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fJ$\u0010&\u001a\u00020\u0002*\u00020\u00122\u0006\u0010\"\u001a\u00020\u00172\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u001aH\u0002J2\u0010)\u001a\u00020\u00022\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00170\'H\u0002J2\u0010+\u001a\u00020\u00022\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00170\'H\u0002R\u0014\u0010-\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010,R\u0014\u0010.\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010\u001e\u001a\u00020/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u00100R\u0016\u00103\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u0010\u0008\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00102R \u00108\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0004058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R \u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0004058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u00107R\u001c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00170\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u001c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00170\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010<R(\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170@0\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010<R(\u0010D\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170@0\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010<\u00a8\u0006G"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;",
        "",
        "",
        "clear",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "p",
        "saveFirstPoint",
        "updateTouchPoint",
        "touchPoint",
        "lastPoint",
        "Landroid/graphics/RectF;",
        "shapeBoundRect",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "transformAction",
        "",
        "touchVelocity",
        "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;",
        "consumeStickyDistance",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "shape",
        "",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "self",
        "other",
        "",
        "strokeWidth",
        "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;",
        "editMode",
        "drawGuideLines",
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;",
        "args",
        "configureShapeCorrectionArgs",
        "guideLine",
        "Landroid/graphics/Paint;",
        "paint",
        "extendLength",
        "c",
        "",
        "aligns",
        "a",
        "parallels",
        "b",
        "Landroid/graphics/Paint;",
        "alignPaint",
        "directionPaint",
        "",
        "Z",
        "d",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "firstPoint",
        "e",
        "",
        "f",
        "Ljava/util/Map;",
        "haltPointsForAlign",
        "g",
        "haltPointsForParallel",
        "h",
        "Ljava/util/List;",
        "alignGuideLines",
        "i",
        "parallelGuideLines",
        "Lkotlin/Pair;",
        "j",
        "alignedPairs",
        "k",
        "paralleledPairs",
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
        "SMAP\nShapeGuideLineRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeGuideLineRender.kt\ncom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,269:1\n215#2,2:270\n215#2,2:274\n1855#3,2:272\n1855#3,2:276\n1855#3,2:278\n1855#3,2:280\n1855#3:282\n1855#3,2:283\n1856#3:285\n1549#3:286\n1620#3,3:287\n1549#3:290\n1620#3,3:291\n766#3:294\n857#3:295\n858#3:297\n1855#3,2:298\n1855#3,2:308\n1855#3:310\n1855#3,2:311\n1856#3:313\n1855#3,2:314\n1549#3:316\n1620#3,3:317\n1549#3:320\n1620#3,3:321\n766#3:324\n857#3:325\n858#3:327\n1855#3,2:328\n1855#3,2:338\n1655#3,8:340\n637#4:296\n637#4:303\n637#4:326\n637#4:333\n526#5:300\n511#5,2:301\n513#5,4:304\n526#5:330\n511#5,2:331\n513#5,4:334\n*S KotlinDebug\n*F\n+ 1 ShapeGuideLineRender.kt\ncom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender\n*L\n121#1:270,2\n137#1:274,2\n130#1:272,2\n146#1:276,2\n184#1:278,2\n192#1:280,2\n220#1:282\n221#1:283,2\n220#1:285\n229#1:286\n229#1:287,3\n230#1:290\n230#1:291,3\n231#1:294\n231#1:295\n231#1:297\n232#1:298,2\n234#1:308,2\n243#1:310\n244#1:311,2\n243#1:313\n251#1:314,2\n261#1:316\n261#1:317,3\n262#1:320\n262#1:321,3\n263#1:324\n263#1:325\n263#1:327\n264#1:328,2\n266#1:338,2\n267#1:340,8\n231#1:296\n233#1:303\n263#1:326\n265#1:333\n233#1:300\n233#1:301,2\n233#1:304,4\n265#1:330\n265#1:331,2\n265#1:334,4\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public d:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c:Z

    new-instance v13, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v13, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->d:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x7f

    const/16 v24, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->h:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->i:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->j:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->k:Ljava/util/List;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v4

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v3

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->a:Landroid/graphics/Paint;

    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v4, v6, v7

    aput v3, v6, v1

    const/4 v1, 0x0

    invoke-direct {v2, v6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->b:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isAlign(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->merge(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->j:Ljava/util/List;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->h:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object p1, p3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->h:Ljava/util/List;

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isParallel(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v4, v5}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isNear$default(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->k:Ljava/util/List;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getSupportHorizontalAlignment()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->getHorizontalGuideline()Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isParallel(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->k:Ljava/util/List;

    new-instance v1, Lkotlin/Pair;

    invoke-static {}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->getHorizontalGuideline()Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getSupportVerticalAlignment()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->getVerticalGuideline()Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isParallel(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->k:Ljava/util/List;

    new-instance v1, Lkotlin/Pair;

    invoke-static {}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->getVerticalGuideline()Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->i:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object p1, p3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->i:Ljava/util/List;

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/Guideline;Landroid/graphics/Paint;F)V
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->stretch(Lcom/onyx/android/sdk/geometry/data/Guideline;Ljava/lang/Number;)Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final configureShapeCorrectionArgs(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->setAlignedPairs(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->k:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->setParalleledPairs(Ljava/util/List;)V

    return-void
.end method

.method public final consumeStickyDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;[F)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBoundRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchVelocity"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->d:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/universal/R$integer;->guideline_min_start_time:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v4

    cmp-long v1, v1, v4

    const/4 v2, 0x0

    if-gez v1, :cond_0

    iput-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c:Z

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/RectKt;->longerSize(Landroid/graphics/RectF;)F

    move-result p3

    sget v1, Lcom/onyx/android/sdk/universal/R$dimen;->guideline_min_shape_size:I

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_1

    iput-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c:Z

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    aget v3, p5, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v1, v2

    aget p5, p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    aput p5, v1, p3

    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->max([F)F

    move-result p5

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineVelocityTriggerThreshold()F

    move-result v1

    cmpl-float p5, p5, v1

    if-lez p5, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p5, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p5, p2, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v7, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v7, v5, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->componentAlongPerpendicularDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v5

    sget-object v7, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineStickyDistance()F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, p3

    goto :goto_0

    :cond_4
    invoke-virtual {p5, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->componentAlongLineDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p5

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_4

    :cond_7
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v6, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v6, v3, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->componentAlongPerpendicularDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v3

    sget-object v6, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineStickyDistance()F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, p3

    goto :goto_2

    :cond_8
    invoke-virtual {p5, v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->componentAlongLineDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p5

    goto :goto_2

    :cond_9
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    :goto_4
    move v2, p3

    :cond_b
    if-nez v2, :cond_c

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->dx()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDx(F)V

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->dy()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDy(F)V

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setStickyState(Z)V

    return-object v0

    :cond_c
    if-eqz v4, :cond_d

    if-eqz v2, :cond_d

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->dx()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDx(F)V

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->dy()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDy(F)V

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setStickyState(Z)V

    return-object v0
.end method

.method public final drawGuideLines(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;Ljava/util/List;FLcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;F",
            "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
            ")V"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "self"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editMode"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformAction"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p6}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;->shouldDrawAligns(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3, p4, v0}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->a:Landroid/graphics/Paint;

    sget-object v5, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineExtendLengthForAlign()F

    move-result v5

    int-to-float v6, v3

    div-float v6, p5, v6

    add-float/2addr v5, v6

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/Guideline;Landroid/graphics/Paint;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    invoke-static {p2, p6, p7}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;->shouldDrawParallel(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p3, p4, v1}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object p4, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->b:Landroid/graphics/Paint;

    sget-object p6, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineExtendLengthForParallel()F

    move-result p6

    int-to-float p7, v3

    div-float p7, p5, p7

    add-float/2addr p6, p7

    invoke-virtual {p0, p1, p3, p4, p6}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/Guideline;Landroid/graphics/Paint;F)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->i:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_4
    return-void
.end method

.method public final saveFirstPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->d:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->c:Z

    return-void
.end method

.method public final updateTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method
