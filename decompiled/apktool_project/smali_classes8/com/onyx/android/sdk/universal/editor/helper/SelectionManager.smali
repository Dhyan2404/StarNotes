.class public final Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$Companion;,
        Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\ncom/onyx/android/sdk/universal/editor/helper/SelectionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,350:1\n1549#2:351\n1620#2,3:352\n1549#2:355\n1620#2,3:356\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\ncom/onyx/android/sdk/universal/editor/helper/SelectionManager\n*L\n233#1:351\n233#1:352,3\n325#1:355\n325#1:356,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 M2\u00020\u0001:\u0001MB\u001f\u0012\u0006\u0010:\u001a\u000208\u0012\u0006\u0010=\u001a\u00020;\u0012\u0006\u0010@\u001a\u00020>\u00a2\u0006\u0004\u0008K\u0010LJ\u001e\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0016\u0010\r\u001a\u00020\u000b2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000e\u001a\u00020\u000b2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000f\u001a\u00020\u000b2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u0010\u001a\u00020\u000b2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u0013\u001a\u00020\tH\u0002J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0002J\u0008\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u001c\u0010\u0019\u001a\u00020\u000b2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u001c\u001a\u00020\u000bJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010!\u001a\u00020 J\"\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\u001c\u0010%\u001a\u00020\u000b2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010$\u001a\u00020\tJ\u0006\u0010&\u001a\u00020\u0007J\"\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\u001c\u0010\'\u001a\u00020\u000b2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010)\u001a\u00020(J\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u001a\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\"\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ*\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tJ\"\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\"\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\"\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\u001c\u00103\u001a\u00020\u000b2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u00102\u001a\u000201J\"\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\u0006\u00105\u001a\u00020\u0007J\u001c\u00107\u001a\u00020 2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u00106\u001a\u00020\tR\u0014\u0010:\u001a\u0002088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00109R\u0014\u0010=\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010<R\u0014\u0010@\u001a\u00020>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010?R\u0016\u00107\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010AR\u0016\u0010C\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010BR\u0016\u0010-\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010DR\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010DR\u0016\u0010G\u001a\u00020E8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010FR\u0014\u0010J\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010I\u00a8\u0006N"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
        "",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "selectionShapes",
        "Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;",
        "corner",
        "",
        "e",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "movedPoint",
        "",
        "g",
        "j",
        "a",
        "f",
        "d",
        "",
        "b",
        "c",
        "touchPointInPage",
        "i",
        "k",
        "h",
        "shapes",
        "onDown",
        "onUp",
        "onMove",
        "reset",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
        "getSelectionRect",
        "getEditRect",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "getTransformAction",
        "Lio/reactivex/rxjava3/core/Observable;",
        "transform",
        "downPoint",
        "touchDown",
        "isAccidentallyTranslate",
        "onRotate",
        "Lcom/onyx/android/sdk/geometry/data/RotateType;",
        "rotateType",
        "restoreTranslateIfMatch",
        "restoreTranslate",
        "onTranslate",
        "lastPoint",
        "onScaleX",
        "onScaleY",
        "onScaleXY",
        "Lcom/onyx/android/sdk/geometry/data/MirrorType;",
        "mirrorType",
        "onMirror",
        "onDrag",
        "isUndefinedTransformAction",
        "point",
        "transformAction",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;",
        "rectCorner",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        "downPointInScreen",
        "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;",
        "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;",
        "guideLineRender",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "Companion",
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
        "SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\ncom/onyx/android/sdk/universal/editor/helper/SelectionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,350:1\n1549#2:351\n1620#2,3:352\n1549#2:355\n1620#2,3:356\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\ncom/onyx/android/sdk/universal/editor/helper/SelectionManager\n*L\n233#1:351\n233#1:352,3\n325#1:355\n325#1:356,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:I = 0x64

.field public static final k:I = 0x96

.field public static final l:Z


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

.field public d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field public g:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field public h:Landroid/graphics/PointF;

.field public final i:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    sput-boolean v0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
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

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    sget-object p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object p1, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->e:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    new-instance p1, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->i:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/base/data/TouchPoint;)F
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRotateHandlerPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v1, p1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p1

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v3, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method

.method public final c()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 12

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCenterPoint()Landroid/graphics/PointF;

    move-result-object p0

    new-instance v11, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    return-object v11
.end method

.method public final d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isImageShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    return-void
.end method

.method public final e(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const-string v2, "lastPoint"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final getEditRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getEditRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final getTransformAction()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->isPointInLimitRect(FF)Z

    move-result p0

    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->convertFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v2, :cond_0

    const-string v2, "lastPoint"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->convertFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->hashCodeHexString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->getSelectionGuideLines(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->boundRect(Lcom/onyx/android/sdk/geometry/data/Guideline;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->i:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    sget-object v4, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->consumeStickyDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->isStickyState()Z

    move-result v1

    if-nez v1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDx()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDy()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->translate(FF)V

    sget-object v0, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->convertFromRenderToPage(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final isAccidentallyTranslate()Z
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const-string v4, "lastPoint"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_1
    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const-string v7, "downPoint"

    if-nez v6, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_2
    invoke-virtual {v1, v3, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->absolute(Ljava/lang/Number;)D

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmpg-double v3, v0, v8

    if-gtz v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_4
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p0, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v5, p0

    :goto_0
    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x96

    cmp-long p0, v3, v5

    if-gtz p0, :cond_6

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double p0, v0, v3

    if-gtz p0, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public final isUndefinedTransformAction()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->isUndefined()Z

    move-result p0

    return p0
.end method

.method public final j(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final k()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v1, :cond_0

    const-string v1, "lastPoint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->convertFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->hashCodeHexString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->getSelectionGuideLines(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->i:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->update(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)V

    return-void
.end method

.method public final onDown(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPointInPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "downPoint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->h:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_1

    const-string v0, "lastPoint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->transformAction(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object p1, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p1, p2, v0}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->convertFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->i:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->onPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V

    return-void
.end method

.method public final onDrag(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movedPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$a;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$a;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMirror(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/MirrorType;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/MirrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/MirrorType;",
            ")V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrorType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;->setMirrorType(Lcom/onyx/android/sdk/geometry/data/MirrorType;)Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->convertFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->i:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->onPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V

    return-void
.end method

.method public final onRotate(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movedPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->i(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    .line 4
    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->setMovedPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v1, :cond_0

    const-string v1, "lastPoint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->setLastPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCenterPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->setPivotPoint(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$b;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->k()V

    return-object p1
.end method

.method public final onRotate(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/RotateType;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/RotateType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/RotateType;",
            ")V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotateType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    .line 13
    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->setRotateType(Lcom/onyx/android/sdk/geometry/data/RotateType;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    move-result-object p0

    .line 14
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCenterPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->setPivotPoint(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onScaleX(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movedPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->h:Landroid/graphics/PointF;

    if-nez p1, :cond_0

    const-string p1, "downPointInScreen"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->setDownPoint(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->setMovedPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    move-result-object p1

    sget-object p2, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v0, "FLOAT_ONE"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->setSy(F)Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$c;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$c;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onScaleXY(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movedPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->h:Landroid/graphics/PointF;

    if-nez p1, :cond_0

    const-string p1, "downPointInScreen"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->setDownPoint(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->setMovedPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$d;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$d;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onScaleY(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movedPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->h:Landroid/graphics/PointF;

    if-nez p1, :cond_0

    const-string p1, "downPointInScreen"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->setDownPoint(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->setMovedPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    move-result-object p1

    sget-object p2, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v0, "FLOAT_ONE"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->setSx(F)Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$e;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$e;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onTranslate(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movedPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    const-string v0, "lastPoint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onTranslate(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final onTranslate(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movedPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 5
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p3

    sub-float/2addr p2, p3

    .line 6
    new-instance p3, Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p3, v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    .line 7
    invoke-virtual {p3, v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;->setDistance(FF)Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$f;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$f;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;->convertFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->i:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->onPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V

    return-void
.end method

.method public final reset()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->e:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    return-void
.end method

.method public final restoreTranslate(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->l:Z

    const-string v1, "lastPoint"

    const-string v2, "downPoint"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreTranslate distance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    iget-object v7, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v7, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_0
    iget-object v8, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v8, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_1
    invoke-virtual {v6, v7, v8}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ",time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v6, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_2
    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v6

    iget-object v8, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v8, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_3
    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v2, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onTranslate(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final restoreTranslateIfMatch(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->isAccidentallyTranslate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->restoreTranslate(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final touchDown(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")V"
        }
    .end annotation

    const-string v0, "selectionShapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getEditRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->touchCornerPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->e:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->e(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getEditRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->touchCornerPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->e:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasAttachShapes(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->touchCornerPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->e:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->LeftTop:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->LeftBottom:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasImageShape(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->touchCornerPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->e:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->OutSideRightTop:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->OutSideLeftTop:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->f(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final transform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "selectionShapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movedPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onDrag(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onScaleY(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onScaleX(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onScaleXY(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onTranslate(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onRotate(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final transformAction(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->V3TouchPointHitTest(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p0

    return-object p0
.end method
