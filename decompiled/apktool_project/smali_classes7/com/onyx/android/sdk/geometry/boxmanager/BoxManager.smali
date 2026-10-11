.class public abstract Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/BoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,229:1\n1864#2,3:230\n766#2:233\n857#2,2:234\n1549#2:236\n1620#2,3:237\n*S KotlinDebug\n*F\n+ 1 BoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/BoxManager\n*L\n138#1:230,3\n161#1:233\n161#1:234,2\n162#1:236\n162#1:237,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u00088\u0008&\u0018\u0000 \u008d\u00012\u00020\u0001:\u0002\u008d\u0001B\t\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008c\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0016\u0010\u0007\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H&J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000cH&J\u001a\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H&J$\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0015H&J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H&J\u0018\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0015H&J\u000e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010 \u001a\u00020\u001fH&J\u001c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0003H&J\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010&\u001a\u00020\u000cH&J\u000e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&J\u000e\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0008\u0010*\u001a\u00020\nH&J\u0008\u0010+\u001a\u00020\u0005H&J\u0010\u0010.\u001a\u00020,2\u0006\u0010-\u001a\u00020,H&J\u001e\u00102\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020,2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u001500H&J\u0010\u00104\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u0015H&J\u0010\u00105\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u0015H&J\u001e\u00106\u001a\u00020\u00052\u0006\u0010/\u001a\u00020,2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u001500H&J\u001c\u00108\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00152\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u001500J\u000e\u00109\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cJ\u0012\u0010;\u001a\u00020\u00052\u0008\u0008\u0002\u0010:\u001a\u00020\u0008H&J\u0008\u0010<\u001a\u00020\u0015H&J\u0006\u0010=\u001a\u00020\u0008J\u0006\u0010>\u001a\u00020\u0011J\u0010\u0010@\u001a\u0004\u0018\u00010\u00032\u0006\u0010?\u001a\u00020\nJ\u0010\u0010A\u001a\u0004\u0018\u00010\u00032\u0006\u0010:\u001a\u00020\u0008J \u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00110BJ\u0016\u0010F\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\u00082\u0006\u0010E\u001a\u00020\u0008J\u000e\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&J\u0010\u0010K\u001a\u00020J2\u0006\u0010I\u001a\u00020HH&J\u0008\u0010L\u001a\u00020\u0011H&J \u0010O\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010M\u001a\u00020\u00152\u0006\u0010N\u001a\u00020\u0015H&J\u0011\u0010R\u001a\u0004\u0018\u00010\u0003H\u0000\u00a2\u0006\u0004\u0008P\u0010QJ\u0008\u0010S\u001a\u0004\u0018\u00010\u0003J\u000e\u0010U\u001a\u00020\u00052\u0006\u0010T\u001a\u00020\u0008R \u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u00030V8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010ZR\"\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010Q\"\u0004\u0008\u000e\u0010_R\"\u0010f\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\"\u0010j\u001a\u00020\u000c8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010a\u001a\u0004\u0008h\u0010c\"\u0004\u0008i\u0010eR\"\u0010q\u001a\u00020\u00118\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\"\u0010x\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\"\u0010\u007f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R)\u0010\u0086\u0001\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R)\u0010\u008a\u0001\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0087\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0083\u0001\"\u0006\u0008\u0089\u0001\u0010\u0085\u0001\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxList",
        "",
        "setData",
        "updateDataAndApplyScale",
        "",
        "id",
        "",
        "indexOf",
        "Landroid/graphics/RectF;",
        "viewport",
        "setViewport",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "",
        "calculate",
        "updateViewportSize",
        "boxId",
        "",
        "offsetX",
        "offsetY",
        "scrollTo",
        "newX",
        "newY",
        "dx",
        "dy",
        "scrollBy",
        "visibleBoxes",
        "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;",
        "viewArgs",
        "collectVisibleBoxList",
        "list",
        "convertToVisibleBoxList",
        "box",
        "updateToVisibleBox",
        "documentRectF",
        "collectIntersectsVisibleBoxList",
        "collectNextViewportVisibleBoxList",
        "collectPrevViewportVisibleBoxList",
        "pageCount",
        "alignCenter",
        "Landroid/graphics/Matrix;",
        "matrix",
        "loadReboundMatrix",
        "gestureDeltaMatrix",
        "Lorg/apache/commons/lang3/Range;",
        "displayScaleRange",
        "toBoxManagerViewArgs",
        "scale",
        "setScale",
        "initScale",
        "applyMatrix",
        "actualScale",
        "initScaleWithinRange",
        "scaleToViewportWithAspectScaleCheck",
        "pageId",
        "updateCurrentMinScale",
        "currentDisplayScale",
        "getDebugString",
        "isNaN",
        "index",
        "getBoxInfoByIndex",
        "findBoxInfoByPageId",
        "Lkotlin/Function1;",
        "predicate",
        "findBoxInfoList",
        "contentPath",
        "updateBoxInfoContentPath",
        "copyBoxList",
        "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;",
        "args",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;",
        "createRxScrollerArgs",
        "isEnabledContinuousScroll",
        "widthTolerance",
        "shrinkScale",
        "calculateScaleRatioForViewport",
        "getCurrentOrFirstBoxInfo$sdk_geometry_release",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getCurrentOrFirstBoxInfo",
        "copyCurrentOrFirstVisibleBoxInfo",
        "msg",
        "log",
        "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;",
        "a",
        "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;",
        "getBoxIdIndexedList",
        "()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;",
        "boxIdIndexedList",
        "b",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getViewport",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "c",
        "Landroid/graphics/RectF;",
        "getBoundingRect",
        "()Landroid/graphics/RectF;",
        "setBoundingRect",
        "(Landroid/graphics/RectF;)V",
        "boundingRect",
        "d",
        "getViewportLimitRect",
        "setViewportLimitRect",
        "viewportLimitRect",
        "e",
        "Z",
        "getEnableFreeMovePaper",
        "()Z",
        "setEnableFreeMovePaper",
        "(Z)V",
        "enableFreeMovePaper",
        "f",
        "I",
        "getFirstVisibleIndex",
        "()I",
        "setFirstVisibleIndex",
        "(I)V",
        "firstVisibleIndex",
        "g",
        "Ljava/lang/String;",
        "getCurrentBoxId",
        "()Ljava/lang/String;",
        "setCurrentBoxId",
        "(Ljava/lang/String;)V",
        "currentBoxId",
        "h",
        "F",
        "getCurrentMinScale",
        "()F",
        "setCurrentMinScale",
        "(F)V",
        "currentMinScale",
        "i",
        "getGap",
        "setGap",
        "gap",
        "<init>",
        "()V",
        "Companion",
        "sdk-geometry_release"
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
        "SMAP\nBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/BoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,229:1\n1864#2,3:230\n766#2:233\n857#2,2:234\n1549#2:236\n1620#2,3:237\n*S KotlinDebug\n*F\n+ 1 BoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/BoxManager\n*L\n138#1:230,3\n161#1:233\n161#1:234,2\n162#1:236\n162#1:237,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXPANSION_OFFSET:F = 300.0f

.field public static final FORCE_ENABLED_CONTINUOUS_SCROLL:Z = false

.field public static final MIN_AUTO_SCROLL_VELOCITY:F = 2000.0f

.field public static final MIN_FLING_PAGE_VELOCITY:F = 400.0f

.field public static final VELOCITY_FACTOR:F = 3.0f

.field public static j:Z


# instance fields
.field public final a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z

.field public f:I

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:F

.field public i:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->Companion:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    sget-object v1, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$boxIdIndexedList$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$boxIdIndexedList$1;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;-><init>(Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->d:Landroid/graphics/RectF;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->g:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->h:F

    return-void
.end method

.method public static final synthetic access$getDEBUG_LOG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->j:Z

    return v0
.end method

.method public static final synthetic access$setDEBUG_LOG$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->j:Z

    return-void
.end method

.method public static synthetic scrollTo$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;FFILjava/lang/Object;)Z
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(Ljava/lang/String;FF)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: scrollTo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateCurrentMinScale$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateCurrentMinScale(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateCurrentMinScale"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateViewportSize$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Lcom/onyx/android/sdk/base/data/Size;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateViewportSize(Lcom/onyx/android/sdk/base/data/Size;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateViewportSize"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract alignCenter()V
.end method

.method public abstract applyMatrix(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)V
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/apache/commons/lang3/Range;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract calculateScaleRatioForViewport(Landroid/graphics/RectF;FF)F
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract collectNextViewportVisibleBoxList()Ljava/util/List;
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
.end method

.method public abstract collectPrevViewportVisibleBoxList()Ljava/util/List;
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
.end method

.method public abstract collectVisibleBoxList(Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;)Ljava/util/List;
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract convertToVisibleBoxList(Ljava/util/List;)Ljava/util/List;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract copyBoxList()Ljava/util/List;
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
.end method

.method public final copyCurrentOrFirstVisibleBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->visibleBoxes()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->g:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v2, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method public abstract createRxScrollerArgs(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract currentDisplayScale()F
.end method

.method public final findBoxInfoByPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->getWithId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final findBoxInfoList(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getBoundingRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    return-object p0
.end method

.method public final getBoxInfoByIndex(I)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCurrentBoxId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getCurrentMinScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->h:F

    return p0
.end method

.method public final getCurrentOrFirstBoxInfo$sdk_geometry_release()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->getWithId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_0
    return-object v0
.end method

.method public final getDebugString()Ljava/lang/String;
    .locals 7
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

    const-string v3, "boxList.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "viewport.id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rect = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boundingRect = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->c:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "viewportLimitRect = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableFreeMovePaper = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getEnableFreeMovePaper()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstVisibleIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentBoxId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentMinScale = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->h:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gap = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->i:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dump NAN boxList start:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->isNaNBox()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    const-string p0, "dump NAN boxList finish:\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getEnableFreeMovePaper()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->e:Z

    return p0
.end method

.method public final getFirstVisibleIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->f:I

    return p0
.end method

.method public final getGap()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->i:F

    return p0
.end method

.method public final getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public getViewportLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public abstract indexOf(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract initScale(F)V
.end method

.method public final initScaleWithinRange(FLorg/apache/commons/lang3/Range;)V
    .locals 4
    .param p2    # Lorg/apache/commons/lang3/Range;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "displayScaleRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->initScale(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->currentDisplayScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->h:F

    mul-float/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->initScale(F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initScaleWithinRange, actualScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", displayScale = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", newScale = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", newDisplayScale = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract isEnabledContinuousScroll()Z
.end method

.method public final isNaN()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->isNaNBox()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->c:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNaN(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNaN(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract loadReboundMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract pageCount()I
.end method

.method public final scaleToViewportWithAspectScaleCheck(Landroid/graphics/RectF;)V
    .locals 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setScale(F)V

    return-void
.end method

.method public abstract scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract scrollTo(Ljava/lang/String;FF)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final setBoundingRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->c:Landroid/graphics/RectF;

    return-void
.end method

.method public final setCurrentBoxId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->g:Ljava/lang/String;

    return-void
.end method

.method public final setCurrentMinScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->h:F

    return-void
.end method

.method public abstract setData(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public setEnableFreeMovePaper(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->e:Z

    return-void
.end method

.method public final setFirstVisibleIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->f:I

    return-void
.end method

.method public final setGap(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->i:F

    return-void
.end method

.method public abstract setScale(F)V
.end method

.method public abstract setViewport(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final setViewport(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public setViewportLimitRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public abstract toBoxManagerViewArgs(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/apache/commons/lang3/Range;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final updateBoxInfoContentPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->a:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->getWithId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getExtraInfo()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->setContentPath(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public abstract updateCurrentMinScale(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateDataAndApplyScale(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateToVisibleBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateViewportSize(Lcom/onyx/android/sdk/base/data/Size;Z)V
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract visibleBoxes()Ljava/util/List;
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
.end method
