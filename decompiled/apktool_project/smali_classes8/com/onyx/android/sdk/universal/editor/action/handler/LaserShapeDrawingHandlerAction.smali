.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaserShapeDrawingHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaserShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n32#2,5:297\n1855#3,2:302\n*S KotlinDebug\n*F\n+ 1 LaserShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction\n*L\n107#1:297,5\n223#1:302,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 O2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001OB\u0017\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010L\u001a\u00020K\u00a2\u0006\u0004\u0008M\u0010NJ\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\u0008\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\t\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\n\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000b\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000c\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001a\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0002J*\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000fH\u0002J\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0002J*\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000fH\u0002J\u0016\u0010 \u001a\u00020\r2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0008\u0010\"\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020!H\u0002J\u0014\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020%H\u0014J\u0006\u0010\'\u001a\u00020\u0004J\u0006\u0010(\u001a\u00020\u0004J\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0004J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0003H\u0014J\u0018\u00100\u001a\u00020/2\u0006\u0010+\u001a\u00020\u00032\u0006\u0010.\u001a\u00020-H\u0016R\u0016\u00103\u001a\u00020-8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00106\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u001a\u0010:\u001a\u0008\u0012\u0004\u0012\u00020!078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010<\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010;R\u0014\u0010=\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010?R\u0018\u0010C\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u001c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00160D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010ER\u0016\u0010H\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010G\u00a8\u0006P"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "",
        "onDispose",
        "o",
        "dataList",
        "D",
        "p",
        "E",
        "C",
        "F",
        "Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;",
        "renderData",
        "",
        "alpha",
        "A",
        "n",
        "Landroid/graphics/Canvas;",
        "canvas",
        "v",
        "Landroid/graphics/Path;",
        "path",
        "Landroid/graphics/Paint;",
        "paint",
        "times",
        "w",
        "u",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "s",
        "r",
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;",
        "y",
        "shapeAttr",
        "z",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "stopRendering",
        "addCurrentPath",
        "cancelCurrentPath",
        "startDismissTimerIf",
        "touchData",
        "onTouchDown",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "",
        "hitNoteInside",
        "k",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "l",
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;",
        "laserShapeAttr",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "m",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "shapeAttrOption",
        "Landroid/graphics/Paint;",
        "blurPaint",
        "innerPaint",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "doneDispose",
        "q",
        "Landroid/graphics/Path;",
        "currentPath",
        "",
        "Ljava/util/List;",
        "pathList",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "lastPoint",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "touchReader",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V",
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
        "SMAP\nLaserShapeDrawingHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaserShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n32#2,5:297\n1855#3,2:302\n*S KotlinDebug\n*F\n+ 1 LaserShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction\n*L\n107#1:297,5\n223#1:302,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:I = 0x3

.field public static final u:F = 1.5f

.field public static final v:I = 0x32


# instance fields
.field public k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public l:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

.field public final m:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getLaserShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->r:Ljava/util/List;

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->s:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public static synthetic B(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0xff

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->A(Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;I)V

    return-void
.end method

.method public static final G(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o()V

    return-void
.end method

.method public static final synthetic access$alphaPaint(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n(I)V

    return-void
.end method

.method public static final synthetic access$drawDotLaser(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->u(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V

    return-void
.end method

.method public static final synthetic access$drawLineLaser(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->v(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V

    return-void
.end method

.method public static final synthetic access$getLaserShapeAttr$p(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    return-object p0
.end method

.method public static final synthetic access$getPathList$p(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->r:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public static final synthetic access$lowLatencyRender(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->A(Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;I)V

    return-void
.end method

.method public static final synthetic access$onTouchDataList(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->D(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onTouchDone(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->E(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$startDismissTimer(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->F(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->G(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->onDispose()V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Paint;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->s(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public static synthetic x(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->w(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v1

    const-string v2, "render_key_laser"

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;

    invoke-direct {v3, p2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;-><init>(ILcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;ZILjava/lang/Object;)V

    return-void
.end method

.method public final C(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$f;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$f;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$2;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final D(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->r(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "laserShapeAttr"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;->DOT:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->getTouchDataList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->p(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->B(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;IILjava/lang/Object;)V

    return-void
.end method

.method public final E(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isSingleTapUp(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->C(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->addCurrentPath()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->F(Ljava/util/List;)V

    return-void
.end method

.method public final F(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x32

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    sub-long v6, v2, v0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    if-nez v0, :cond_0

    const-string v0, "laserShapeAttr"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getDuration()J

    move-result-wide v0

    div-long v10, v0, v6

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->r(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->p:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_1
    const-wide/16 v4, 0x1

    const-wide/16 v8, 0x0

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v4 .. v12}, Lio/reactivex/rxjava3/core/Observable;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$i;

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$i;-><init>(J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$j;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/cvi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cvi;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->p:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final addCurrentPath()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q:Landroid/graphics/Path;

    :cond_0
    return-void
.end method

.method public final cancelCurrentPath()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q:Landroid/graphics/Path;

    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->subscribeTouchData()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/bvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bvi;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public hitNoteInside(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "touchData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "boxInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->cancelCurrentPath()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "render_key_laser"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onDispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->stopRendering()V

    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->p:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->y()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    const/4 v1, 0x0

    const-string v2, "laserShapeAttr"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->isDotType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->z(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q:Landroid/graphics/Path;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q:Landroid/graphics/Path;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q:Landroid/graphics/Path;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->s:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q:Landroid/graphics/Path;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/TouchData;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->s:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->s:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->averageQuadTo(Landroid/graphics/Path;FFFF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->s:Lcom/onyx/android/sdk/base/data/TouchPoint;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final r(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->setTouchDataList(Ljava/util/List;)V

    return-object p0
.end method

.method public final s(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Paint;I)V
    .locals 4

    if-ltz p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    if-nez v3, :cond_0

    const-string v3, "laserShapeAttr"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getRadius()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eq v0, p4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final startDismissTimerIf()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->p:Lio/reactivex/rxjava3/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->F(Ljava/util/List;)V

    return-void
.end method

.method public final stopRendering()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->p:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o()V

    return-void
.end method

.method public final u(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V
    .locals 7

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->getTouchDataList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/geometry/data/TouchData;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->t(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Paint;IILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->s(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public final v(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V
    .locals 10

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->r:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->x(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;IILjava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->w(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->q:Landroid/graphics/Path;

    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->x(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->w(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :cond_1
    return-void
.end method

.method public final w(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 0

    if-ltz p4, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eq p0, p4, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->m:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->setStrokeWidth(F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->setColor(I)V

    return-object p0
.end method

.method public final z(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/onyx/android/sdk/note/extension/PaintKt;->updateShapeDrawPaintStyle(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;->LINE:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->o:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    move-result-object v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->n:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getShadowRadius()F

    move-result p1

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, p1, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method
