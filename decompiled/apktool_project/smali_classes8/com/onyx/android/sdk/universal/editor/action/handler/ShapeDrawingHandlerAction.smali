.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$Companion;,
        Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeDrawingHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,505:1\n766#2:506\n857#2,2:507\n766#2:509\n857#2,2:510\n1855#2:512\n1856#2:517\n1855#2,2:518\n1855#2,2:520\n1855#2,2:522\n1855#2,2:524\n1855#2,2:526\n125#3:513\n152#3,3:514\n*S KotlinDebug\n*F\n+ 1 ShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction\n*L\n223#1:506\n223#1:507,2\n230#1:509\n230#1:510,2\n231#1:512\n231#1:517\n243#1:518,2\n258#1:520,2\n427#1:522,2\n462#1:524,2\n466#1:526,2\n233#1:513\n233#1:514,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002rsB\u001f\u0012\u0006\u0010m\u001a\u00020l\u0012\u0006\u0010o\u001a\u00020n\u0012\u0006\u0010K\u001a\u00020H\u00a2\u0006\u0004\u0008p\u0010qJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J*\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001f0$2\u0006\u0010 \u001a\u00020\u001f2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00130\"H\u0002J(\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001f0$2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00132\u0008\u0008\u0002\u0010&\u001a\u00020\u0006H\u0002J*\u0010-\u001a\u0006\u0012\u0002\u0008\u00030$2\u0006\u0010(\u001a\u00020\u001f2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00040)2\u0006\u0010,\u001a\u00020+H\u0002J(\u00100\u001a\u0006\u0012\u0002\u0008\u00030$2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00040)2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00040)H\u0002J\u0008\u00101\u001a\u00020\u0002H\u0002J\u0010\u00102\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0013H\u0002J\u0008\u00104\u001a\u000203H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0002J\u0010\u00108\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u000205H\u0002J\u0010\u0010;\u001a\u0002052\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010<\u001a\u00020\u0006H\u0002J\u0010\u0010=\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010?\u001a\u00020>2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00000$H\u0016J\u000e\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00000$H\u0014J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010C\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0006\u0010E\u001a\u00020\u0002J\u0006\u0010F\u001a\u00020\u0002J\u0006\u0010G\u001a\u00020\u0002R\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0016\u0010\u001c\u001a\u00020\u00138\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0016\u0010S\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010RR\u001a\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u00150T8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010UR\u001c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020W0T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010UR&\u0010\\\u001a\u0012\u0012\u0004\u0012\u0002050Yj\u0008\u0012\u0004\u0012\u000205`Z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010[R\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0016\u0010d\u001a\u00020a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\"\u0010k\u001a\u00020e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010;\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010j\u00a8\u0006t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "",
        "onDispose",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "J",
        "w",
        "v",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "L",
        "N",
        "C",
        "S",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
        "z",
        "K",
        "x",
        "p",
        "P",
        "O",
        "virtualBoxInfo",
        "flushShape",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
        "result",
        "M",
        "",
        "map",
        "Lio/reactivex/rxjava3/core/Observable;",
        "o",
        "addToCmdStack",
        "r",
        "it",
        "",
        "shapeList",
        "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
        "args",
        "E",
        "currentDrawShapeList",
        "hitTestShapeList",
        "F",
        "B",
        "A",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
        "H",
        "",
        "msg",
        "log",
        "Q",
        "renderKey",
        "R",
        "I",
        "D",
        "T",
        "",
        "G",
        "build",
        "create",
        "onTouchDown",
        "onTouchMove",
        "onTouchUp",
        "clearShapeRenderer",
        "flushPendingShapes",
        "clearPendingShapes",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;",
        "k",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;",
        "shapeShaderManager",
        "l",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "m",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "n",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
        "lowLatencyShapeFlushInfo",
        "",
        "Ljava/util/List;",
        "crossPageLowLatencyShapeFlushInfoList",
        "Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;",
        "pendingAddShapeList",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "Ljava/util/HashSet;",
        "rendererKeySet",
        "Landroid/graphics/Matrix;",
        "s",
        "Landroid/graphics/Matrix;",
        "noteNormalizeMatrix",
        "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;",
        "t",
        "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;",
        "shapeGuideLineHandler",
        "",
        "u",
        "getShapeDrawingModel",
        "()I",
        "setShapeDrawingModel",
        "(I)V",
        "shapeDrawingModel",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "touchReader",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V",
        "Companion",
        "a",
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
        "SMAP\nShapeDrawingHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,505:1\n766#2:506\n857#2,2:507\n766#2:509\n857#2,2:510\n1855#2:512\n1856#2:517\n1855#2,2:518\n1855#2,2:520\n1855#2,2:522\n1855#2,2:524\n1855#2,2:526\n125#3:513\n152#3,3:514\n*S KotlinDebug\n*F\n+ 1 ShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction\n*L\n223#1:506\n223#1:507,2\n230#1:509\n230#1:510,2\n231#1:512\n231#1:517\n243#1:518,2\n258#1:520,2\n427#1:522,2\n462#1:524,2\n466#1:526,2\n233#1:513\n233#1:514,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPE_DRAWING_IGNORE_SINGLE_TAP_MODE:I = 0x1

.field public static final SHAPE_DRAWING_NORMAL_MODE:I


# instance fields
.field public final k:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public m:Lcom/onyx/android/sdk/note/common/shape/Shape;

.field public n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

.field public o:Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeShaderManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->p:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->q:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r:Ljava/util/HashSet;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->s:Landroid/graphics/Matrix;

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    return-void
.end method

.method public static final synthetic access$addCrossPageShapes(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->o(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$addShapeObservable(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$forceRenderNoteOnDemand(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->E(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShapeGuideLineHandler$p(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    return-object p0
.end method

.method public static final synthetic access$postCommandEvent(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->M(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method

.method public static final synthetic access$postProcessTouchData(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->N(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->y(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->u(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shapeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeVerifyId(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    return-void
.end method

.method public static final y(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->onDispose()V

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0}, Lcom/onyx/android/sdk/note/extension/PaintKt;->updateShapeDrawPaintStyle(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getStrokeColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method

.method public final B()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "virtualBoxInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->A(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    if-nez v0, :cond_1

    const-string v0, "renderContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-interface {p0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;->updateRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void
.end method

.method public final C(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getRulerTransformHandler()Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;->processPenArgs(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const-string v2, "renderContext"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->createFreeShape(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const-string v1, "shape"

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_3
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v4, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_4
    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->G(Lcom/onyx/android/sdk/note/common/shape/Shape;)F

    move-result v4

    invoke-interface {p1, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_5
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->createGuideLineHandler()Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_6
    invoke-interface {p1, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;->updateRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getCurrentShapeType()I

    move-result p1

    const/16 v2, 0xf

    if-eq p1, v2, :cond_c

    const/16 v2, 0x27

    if-eq p1, v2, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_8
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getSubShapeType()I

    move-result p1

    goto :goto_0

    :cond_9
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getTapeFillStyle()Ljava/lang/String;

    move-result-object v3

    :cond_a
    if-nez v3, :cond_b

    const-string v3, ""

    :cond_b
    invoke-static {p0, p1, v3}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setTapeSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;ILjava/lang/String;)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_d
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getRoundCorner()Z

    move-result v2

    goto :goto_1

    :cond_e
    move v2, v4

    :goto_1
    invoke-static {p1, v2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_f
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v5, :cond_10

    const-string v5, "virtualBoxInfo"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_10
    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isCurDarkTheme(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {p1, v2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_11
    invoke-static {p1, v4}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p0, :cond_12

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    move-object v3, p0

    :goto_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getSubShapeType()I

    move-result p0

    goto :goto_3

    :cond_13
    const/4 p0, -0x1

    :goto_3
    invoke-static {v3, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    :goto_4
    return-void
.end method

.method public final D()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$filterByFingerGesture$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$filterByFingerGesture$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->filterByFingerGesture(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final E(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->canAddShape()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->isSingleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getHitTestSupportSingleTapShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingPageDisplayRectFWithWidth(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->setPageDisplayRectF(Landroid/graphics/RectF;)V

    const-string p3, "Render, forceRenderNoteDirtyRect111"

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getHitTestSupportSingleTapShapeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->F(Ljava/util/List;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getHasBottomUnderContentShape()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getForceRenderNoteDirtyRectToDisplay()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Render, forceRenderNoteDirtyRect222, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getHasBottomUnderContentShape()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getForceRenderNoteDirtyRectToDisplay()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->log(Ljava/lang/String;)V

    invoke-static {p0, p3}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final F(Ljava/util/List;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$h;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$i;

    invoke-direct {v1, p1, p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$i;-><init>(Ljava/util/List;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final G(Lcom/onyx/android/sdk/note/common/shape/Shape;)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorDataProxy()Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;->getAdaptiveStrokeWidth(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)F

    move-result p0

    return p0
.end method

.method public final H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "render_key_shape_drawing"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final J(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 3

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->isStrokeConverted(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "is converted"

    invoke-virtual {p1, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p0
.end method

.method public final K(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const-string v1, "shape"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->T(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const-string v3, "virtualBoxInfo"

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->hitNoteInside(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p1

    const-string v0, "lowLatencyShapeFlushInfo"

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v7, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->p:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$lowLatencyFlushToPage$hitBoxList$1$1;

    invoke-direct {v8, v6}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$lowLatencyFlushToPage$hitBoxList$1$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-static {v7, v8}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v5, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_6
    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v6, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_7
    invoke-virtual {p1, v5, v6}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingScreenRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v5, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_a
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v6, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_b
    invoke-static {v5, v4, v6}, Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt;->createCrossPageShapeMap(Ljava/util/List;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v7}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->A(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v7

    iget-object v8, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->o:Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    if-nez v8, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v2

    :cond_c
    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-static {v8}, Lcom/onyx/android/sdk/base/extension/PaintKt;->copy(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setPaint(Landroid/graphics/Paint;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v8, v7, v6}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->z(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->p:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto/16 :goto_2

    :cond_e
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_f
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->readyToLowLatencyFlush()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->p:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Z)Z

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->o:Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    if-nez p0, :cond_11

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_11
    const/4 v0, 0x2

    invoke-static {p1, p0, v3, v0, v2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->lowLatencyFlushToPage$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;ZILjava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final L(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->s:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p1
.end method

.method public final M(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getUndoRedoCommand()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/note/common/event/CommandEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/note/common/event/CommandEvent;-><init>(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/NoteBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final N(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->clearShapeRenderer()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->K(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->p(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method

.method public final O(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const-string v1, "shape"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->resetConnection()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->J(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->clearShapeRenderer()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isFingerToolType()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->flushPendingShapes()V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez p1, :cond_3

    const-string p1, "renderContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_4

    const-string v1, "virtualBoxInfo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->q(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->v(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public final P(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getDown()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->isSingleTapEvent$default(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/TouchData;Ljava/lang/Number;JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_0

    const-string p1, "shape"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->Q(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->O(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public final Q(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->I(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->R(Ljava/lang/String;)V

    return-void
.end method

.method public final R(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final S()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "shape"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v2, :cond_1

    const-string v2, "renderContext"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v3, :cond_2

    const-string v3, "virtualBoxInfo"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->z(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->o:Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final T(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->useLowLatencyFlush()Z

    move-result p0

    return p0
.end method

.method public build()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/LooperKt;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->buildFast()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final clearPendingShapes()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->q:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelyDetachList$default(Ljava/util/List;IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->Q(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->clearShapeRenderer()V

    return-void
.end method

.method public final clearShapeRenderer()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->x()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r:Ljava/util/HashSet;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->R(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, "ShapeDrawing render touchMode:"

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect clearing all ShapeDrawing renderer but keySet is not empty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->w([Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->w([Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getOtherRenderListHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->rendererSize()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v2

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect clearing all ShapeDrawing renderer but rendererList is not empty:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->w([Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect clearing all ShapeDrawing renderer info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getOtherRenderListHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getDisplayDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->w([Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect clearing all ShapeDrawing renderer last shapeId is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v4, :cond_2

    const-string v4, "shape"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2
    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->w([Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->w([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getOtherRenderListHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->clearRenderer()V

    :cond_3
    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->subscribeTouchData()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/amm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/amm;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final flushPendingShapes()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->q:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->q:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelyDetachList$default(Ljava/util/List;IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->q(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getShapeDrawingModel()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->u:I

    return p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->canAddShape()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p2, "concatMap(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$b;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onDispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->clearShapeRenderer()V

    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "virtualBoxInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->s:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->B()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->C(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->S()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->L(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const-string v3, "shape"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-interface {v1, v0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v1, :cond_3

    const-string v1, "renderContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    invoke-interface {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, p1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->w(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->L(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;->onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const-string v2, "shape"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-interface {v1, v0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez p0, :cond_2

    const-string p0, "renderContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p0

    :goto_0
    invoke-interface {v0, v3, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public onTouchUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->L(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;->onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const-string v2, "shape"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-interface {v1, v0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->t:Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez p0, :cond_2

    const-string p0, "renderContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p0

    :goto_0
    invoke-interface {v0, v3, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isTouchDone(Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->P(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->O(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->u:I

    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 8

    invoke-interface {p3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->updatePoints()V

    invoke-interface {p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p3, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {v1, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->deepCopy(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt;->createCrossPageShapeMap(Ljava/util/List;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getFlushPageCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->setFlushPageCount(I)V

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-direct {v5, v0, p1, v4}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-direct {v2, v0, p1, v4}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->Q(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->s(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$c;

    invoke-direct {p2, p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$d;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v1, v0, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingPageDisplayRectFWithWidth(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v3

    new-instance v10, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p2, v0, p3}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addShapes(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object p3, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addShapeObservable$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addShapeObservable$1;

    new-instance v1, Lcom/sunia/HTREnginev2/ylm;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/ylm;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/List;)V

    invoke-static {p2, p3, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object p3, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addShapeObservable$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addShapeObservable$3;

    new-instance v1, Lcom/sunia/HTREnginev2/zlm;

    invoke-direct {v1, p0, p1, v10}, Lcom/sunia/HTREnginev2/zlm;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)V

    invoke-static {p2, p3, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;

    invoke-direct {p2, p0, v0, v10}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setShapeDrawingModel(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->u:I

    return-void
.end method

.method public final v(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->q:Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "renderContext"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_1

    const-string p0, "virtualBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-direct {v1, v2, p0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final w(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->I(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->H()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v3, :cond_0

    const-string v3, "renderContext"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-direct {v2, p0, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;ZILjava/lang/Object;)V

    return-void
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const-string v1, "shape"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->T(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_4

    const-string v1, "virtualBoxInfo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->p:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getShapeReference()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getShapeReference()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final z(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->setAddVerifyId(Z)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->setSegmentStash(Z)V

    return-object p1
.end method
