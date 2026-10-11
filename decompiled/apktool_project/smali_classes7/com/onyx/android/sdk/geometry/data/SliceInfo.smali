.class public final Lcom/onyx/android/sdk/geometry/data/SliceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/base/data/Copier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;,
        Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;,
        Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;,
        Lcom/onyx/android/sdk/geometry/data/SliceInfo$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slice.kt\ncom/onyx/android/sdk/geometry/data/SliceInfo\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,383:1\n43#2,3:384\n43#2,3:387\n*S KotlinDebug\n*F\n+ 1 Slice.kt\ncom/onyx/android/sdk/geometry/data/SliceInfo\n*L\n251#1:384,3\n261#1:387,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 ]2\u00020\u0001:\u0003]^_B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u0000J\u0008\u00106\u001a\u00020\u0000H\u0016J\u000e\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0000J\u0006\u0010:\u001a\u00020\tJ\u0018\u0010;\u001a\u00020!2\u0006\u0010<\u001a\u00020!2\u0008\u0008\u0002\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020!2\u0006\u0010@\u001a\u00020!J\u0006\u0010A\u001a\u00020!J\u0006\u0010B\u001a\u00020\u0011J\u0006\u0010C\u001a\u00020\u0011J\u000e\u0010D\u001a\u00020\u00112\u0006\u0010<\u001a\u00020!J\u000e\u0010E\u001a\u00020\u00112\u0006\u0010F\u001a\u00020!J\u0006\u0010G\u001a\u00020\u0011J\u0006\u0010H\u001a\u00020\u0011J\u0006\u0010I\u001a\u00020\u0011J\u0006\u0010J\u001a\u00020\u0011J\u000e\u0010K\u001a\u00020\u00112\u0006\u0010L\u001a\u00020\tJ\u000e\u0010M\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u0000J\u0010\u0010O\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u0000H\u0002J\u0006\u0010P\u001a\u00020\tJ\u0018\u0010Q\u001a\u00020\u00162\u0006\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u0000H\u0002J\u0018\u0010R\u001a\u00020\u00162\u0006\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u0000H\u0002J\u000e\u0010S\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\u0004J\u0018\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020\u00002\u0008\u0010X\u001a\u0004\u0018\u00010!J\u0010\u0010Y\u001a\u0002082\u0006\u0010Z\u001a\u00020>H\u0002J\u000e\u0010[\u001a\u0002082\u0006\u0010\\\u001a\u00020%R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001e\u0010\"\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020!@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001e\u0010&\u001a\u00020%2\u0006\u0010\u0003\u001a\u00020%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u001e\u0010*\u001a\u00020)2\u0006\u0010\u0003\u001a\u00020)@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R \u0010-\u001a\u0008\u0012\u0004\u0012\u00020\t0.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u0006`"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "Lcom/onyx/android/sdk/base/data/Copier;",
        "()V",
        "<set-?>",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "getBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "cacheKey",
        "",
        "getCacheKey",
        "()Ljava/lang/String;",
        "setCacheKey",
        "(Ljava/lang/String;)V",
        "dataPath",
        "getDataPath",
        "isHighQuality",
        "",
        "()Z",
        "setHighQuality",
        "(Z)V",
        "pageDisplayMatrix",
        "Landroid/graphics/Matrix;",
        "getPageDisplayMatrix",
        "()Landroid/graphics/Matrix;",
        "setPageDisplayMatrix",
        "(Landroid/graphics/Matrix;)V",
        "safeBitmap",
        "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;",
        "getSafeBitmap",
        "()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;",
        "setSafeBitmap",
        "(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V",
        "Landroid/graphics/RectF;",
        "sliceRectFInPage",
        "getSliceRectFInPage",
        "()Landroid/graphics/RectF;",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;",
        "state",
        "getState",
        "()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;",
        "type",
        "getType",
        "()Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;",
        "verifyIdList",
        "",
        "getVerifyIdList",
        "()Ljava/util/List;",
        "setVerifyIdList",
        "(Ljava/util/List;)V",
        "computeRenderContentMatrix",
        "dirtySliceRectFInPage",
        "contentSlice",
        "copy",
        "copyDisplayData",
        "",
        "info",
        "generateCacheKey",
        "getPageRectF",
        "dirtyPageDisplayRectF",
        "expandRightBottom",
        "",
        "getSliceRectF",
        "pageDisplayRectF",
        "getSliceRenderDisplayRectF",
        "isCanDisplay",
        "isCanDraw",
        "isContainPageDisplayRect",
        "isContainPageRectF",
        "pageRectF",
        "isContent",
        "isContentNote",
        "isNote",
        "isRendering",
        "isSameNotePageId",
        "pageId",
        "isSamePage",
        "another",
        "isSameRectInPage",
        "lastVerifyId",
        "pageHighQualityMatrix",
        "pageNormalMatrix",
        "toScaleSliceInfo",
        "displayBoxInfo",
        "updateBitmapDirtyRect",
        "Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;",
        "new",
        "dirtyPageDisplayRect",
        "updateDisplayMatrix",
        "bitmapScale",
        "updateState",
        "newState",
        "Companion",
        "State",
        "Type",
        "sdk-geometry_release"
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
        "SMAP\nSlice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slice.kt\ncom/onyx/android/sdk/geometry/data/SliceInfo\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,383:1\n43#2,3:384\n43#2,3:387\n*S KotlinDebug\n*F\n+ 1 Slice.kt\ncom/onyx/android/sdk/geometry/data/SliceInfo\n*L\n251#1:384,3\n261#1:387,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DIRTY_RECT_EXPAND_RIGHT_BOTTOM:F = 2.0f


# instance fields
.field private boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cacheKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dataPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isHighQuality:Z

.field private pageDisplayMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sliceRectFInPage:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private verifyIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;->CONTENT:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->dataPath:Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->NO_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    new-instance v0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->verifyIdList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setBoxInfo$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public static final synthetic access$setDataPath$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->dataPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSliceRectFInPage$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    return-void
.end method

.method public static final synthetic access$setType$p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    return-void
.end method

.method public static synthetic getPageRectF$default(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;FILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getPageRectF(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private final isSameRectInPage(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v3, v0, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float v4, p0, p1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final pageHighQualityMatrix(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Matrix;
    .locals 4

    iget-object v0, p2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget-object p2, p2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    :goto_0
    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->translateCoordinates(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method private final pageNormalMatrix(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Matrix;
    .locals 3

    iget-object v0, p2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :cond_0
    iget-object p2, p2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRenderDisplayRectF()Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    iget p1, p0, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {p0, p1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, p1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr p2, p1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p1

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method private final updateDisplayMatrix(F)V
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    iget p1, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final cacheKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->generateCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public final computeRenderContentMatrix(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Matrix;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dirtySliceRectFInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentSlice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageNormalMatrix(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageHighQualityMatrix(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->dataPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->dataPath:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 6
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    .line 7
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    .line 8
    sget-object v1, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->Companion:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;->create(Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    .line 9
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    .line 10
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->verifyIdList:Ljava/util/List;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->verifyIdList:Ljava/util/List;

    .line 11
    iget-boolean v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality:Z

    iput-boolean v1, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality:Z

    .line 12
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final copyDisplayData(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setBox(Landroid/graphics/RectF;)V

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public final generateCacheKey()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getDataPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->dataPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageDisplayMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getPageRectF(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dirtyPageDisplayRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->floor(F)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/FloatKt;->floor(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    return-object p1
.end method

.method public final getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    return-object p0
.end method

.method public final getSliceRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageDisplayRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p1
.end method

.method public final getSliceRectFInPage()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getSliceRenderDisplayRectF()Landroid/graphics/RectF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object p0
.end method

.method public final getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    return-object p0
.end method

.method public final getType()Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    return-object p0
.end method

.method public final getVerifyIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->verifyIdList:Ljava/util/List;

    return-object p0
.end method

.method public final isCanDisplay()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final isCanDraw()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isContainPageDisplayRect(Landroid/graphics/RectF;)Z
    .locals 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dirtyPageDisplayRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getPageRectF$default(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;FILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final isContainPageRectF(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->sliceRectFInPage:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final isContent()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isContentNote()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isHighQuality()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality:Z

    return p0
.end method

.method public final isNote()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public final isRendering()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSameNotePageId(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isNote()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSamePage(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "another"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->type:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->dataPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->dataPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isSameRectInPage(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final lastVerifyId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->verifyIdList:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final setCacheKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method public final setHighQuality(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality:Z

    return-void
.end method

.method public final setPageDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->pageDisplayMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setSafeBitmap(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    return-void
.end method

.method public final setVerifyIdList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->verifyIdList:Ljava/util/List;

    return-void
.end method

.method public final toScaleSliceInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "displayBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateDisplayMatrix(F)V

    return-object p0
.end method

.method public final updateBitmapDirtyRect(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;-><init>(Lcom/onyx/android/sdk/geometry/data/SliceInfo;ZLandroid/graphics/RectF;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->safeBitmap:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->setSuccess(Z)V

    return-object v0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    iget p2, p0, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/FloatKt;->floor(F)F

    move-result p2

    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->floor(F)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, p1, p2, p0, v2}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->drawBitmapFloorLeftTop(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->setDirtyBitmapRect(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->setSuccess(Z)V

    return-object v0
.end method

.method public final updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->state:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    return-void
.end method
