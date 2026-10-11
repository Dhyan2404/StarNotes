.class public final Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLowLatencyRenderData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LowLatencyRenderData.kt\ncom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n1855#2,2:117\n*S KotlinDebug\n*F\n+ 1 LowLatencyRenderData.kt\ncom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData\n*L\n56#1:115,2\n65#1:117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0008\u0018\u0000 C2\u00020\u0001:\u0001CB\u0007\u00a2\u0006\u0004\u0008A\u0010BJ\u0006\u0010\u0003\u001a\u00020\u0002J&\u0010\u0008\u001a\u00020\u00022\u001e\u0010\u0007\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004J\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\u0002J\u0006\u0010\u000c\u001a\u00020\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0017R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\"\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u001a\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001eR\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010.\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010%\u001a\u0004\u0008,\u0010\'\"\u0004\u0008-\u0010)R*\u00105\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0011\u00109\u001a\u0002068F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0011\u0010;\u001a\u0002068F\u00a2\u0006\u0006\u001a\u0004\u0008:\u00108R\u0017\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00060<8F\u00a2\u0006\u0006\u001a\u0004\u0008=\u00102R\u0017\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00060<8F\u00a2\u0006\u0006\u001a\u0004\u0008?\u00102\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;",
        "",
        "",
        "composePath",
        "Lkotlin/Function1;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "map",
        "composePoints",
        "",
        "isPointCountOverThreshold",
        "reset",
        "resetPredict",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "a",
        "c",
        "d",
        "b",
        "Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;",
        "Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;",
        "pathBezierArgs",
        "Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;",
        "Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;",
        "pointBezierArgs",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "setPaint",
        "(Landroid/graphics/Paint;)V",
        "paint",
        "getPredictPaint",
        "setPredictPaint",
        "predictPaint",
        "",
        "e",
        "I",
        "getPointCount",
        "()I",
        "setPointCount",
        "(I)V",
        "pointCount",
        "f",
        "getPointCountThreshold",
        "setPointCountThreshold",
        "pointCountThreshold",
        "g",
        "Ljava/util/List;",
        "getTouchDataList",
        "()Ljava/util/List;",
        "setTouchDataList",
        "(Ljava/util/List;)V",
        "touchDataList",
        "Landroid/graphics/Path;",
        "getPath",
        "()Landroid/graphics/Path;",
        "path",
        "getPredictPath",
        "predictPath",
        "",
        "getRealPointList",
        "realPointList",
        "getPredictPointList",
        "predictPointList",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
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
        "SMAP\nLowLatencyRenderData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LowLatencyRenderData.kt\ncom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n1855#2,2:117\n*S KotlinDebug\n*F\n+ 1 LowLatencyRenderData.kt\ncom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData\n*L\n56#1:115,2\n65#1:117,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_POINT_COUNT_THRESHOLD:I = 0x64


# instance fields
.field public a:Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->Companion:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->a:Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->b:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->d:Landroid/graphics/Paint;

    const/16 v0, 0x64

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->f:I

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->c:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/onyx/android/sdk/note/extension/PaintKt;->updateShapeDrawPaintStyle(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->c:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->d:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->d(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->b(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->c(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    :goto_0
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    iget p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->f:I

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->e:I

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->e:I

    return-void
.end method

.method public final composePath()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->g:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->a(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->a:Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->onTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final composePoints(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->g:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->b:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->setPointMap(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->a(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->b:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->onTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    iget p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->e:I

    return-void
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->c:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->a:Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->getPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public final getPointCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->e:I

    return p0
.end method

.method public final getPointCountThreshold()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->f:I

    return p0
.end method

.method public final getPredictPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->d:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getPredictPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->a:Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->getPredictPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public final getPredictPointList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->b:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->getPredictPointList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRealPointList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->b:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->getRealPointList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTouchDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->g:Ljava/util/List;

    return-object p0
.end method

.method public final isPointCountOverThreshold()Z
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->e:I

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->f:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->e:I

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->b:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->reset()V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->a:Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->reset()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->resetPredict()V

    return-void
.end method

.method public final resetPredict()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->a:Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->resetPredict()V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->b:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->resetPredict()V

    return-void
.end method

.method public final setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public final setPointCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->e:I

    return-void
.end method

.method public final setPointCountThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->f:I

    return-void
.end method

.method public final setPredictPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->d:Landroid/graphics/Paint;

    return-void
.end method

.method public final setTouchDataList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->g:Ljava/util/List;

    return-void
.end method
