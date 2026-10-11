.class public final Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002J\u001c\u0010\u000b\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002J\u0012\u0010\r\u001a\u00020\u000c*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007R\u0017\u0010\u0012\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R?\u0010\u0019\u001a&\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002 \u0014*\u0012\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00130\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R?\u0010\u001c\u001a&\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002 \u0014*\u0012\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00130\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0018R?\u0010\u001f\u001a&\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002 \u0014*\u0012\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00130\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0016\u001a\u0004\u0008\u001e\u0010\u0018R\u001b\u0010$\u001a\u00020 8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0016\u001a\u0004\u0008\"\u0010#R\u001a\u0010\'\u001a\u00020\u000c8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;",
        "",
        "",
        "roundScale",
        "displayRoundScale",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "Landroid/graphics/RectF;",
        "viewportRectF",
        "maxScreenScale",
        "contentPageMaxScale",
        "virtualPageMaxScale",
        "",
        "isEnabledHighQuality",
        "a",
        "F",
        "getPRECISION_VALUE",
        "()F",
        "PRECISION_VALUE",
        "Lorg/apache/commons/lang3/Range;",
        "kotlin.jvm.PlatformType",
        "b",
        "Lkotlin/Lazy;",
        "getContinuousPageScaleRange",
        "()Lorg/apache/commons/lang3/Range;",
        "continuousPageScaleRange",
        "c",
        "getPageScaleRange",
        "pageScaleRange",
        "d",
        "getDraftNoteScaleRange",
        "draftNoteScaleRange",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "e",
        "getDefaultScalePreviewMaxSize",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "defaultScalePreviewMaxSize",
        "f",
        "Z",
        "isEnabledDisplayThumbanilWhenScaling",
        "()Z",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:F

.field public static final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$dimen;->scale_precision_value:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloatValue(I)F

    move-result v0

    sput v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->a:F

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$continuousPageScaleRange$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$continuousPageScaleRange$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$pageScaleRange$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$pageScaleRange$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->c:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->d:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$defaultScalePreviewMaxSize$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$defaultScalePreviewMaxSize$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->e:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic contentPageMaxScale$default(Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;FILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRENDER_MAX_SCREEN_SCALE()F

    move-result p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->contentPageMaxScale(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;F)F

    move-result p0

    return p0
.end method

.method public static synthetic virtualPageMaxScale$default(Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;FILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p3, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRENDER_MAX_SCREEN_SCALE()F

    move-result p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->virtualPageMaxScale(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final contentPageMaxScale(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;F)F
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "boxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewportRectF"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public final displayRoundScale(F)F
    .locals 0

    sget p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->a:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    return p1
.end method

.method public final getContinuousPageScaleRange()Lorg/apache/commons/lang3/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/Range;

    return-object p0
.end method

.method public final getDefaultScalePreviewMaxSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method

.method public final getDraftNoteScaleRange()Lorg/apache/commons/lang3/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/Range;

    return-object p0
.end method

.method public final getPRECISION_VALUE()F
    .locals 0

    sget p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->a:F

    return p0
.end method

.method public final getPageScaleRange()Lorg/apache/commons/lang3/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->c:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/Range;

    return-object p0
.end method

.method public final isEnabledDisplayThumbanilWhenScaling()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->f:Z

    return p0
.end method

.method public final isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewportRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->virtualPageMaxScale$default(Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;FILjava/lang/Object;)F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final virtualPageMaxScale(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;F)F
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewportRectF"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method
