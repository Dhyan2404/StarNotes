.class public final Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderSelectionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderSelectionUtils.kt\ncom/onyx/android/sdk/reader/utils/ReaderSelectionUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,330:1\n1360#2:331\n1446#2,5:332\n1864#2,3:337\n766#2:340\n857#2,2:341\n1855#2:343\n1855#2,2:344\n1856#2:346\n1747#2,3:347\n*S KotlinDebug\n*F\n+ 1 ReaderSelectionUtils.kt\ncom/onyx/android/sdk/reader/utils/ReaderSelectionUtils\n*L\n51#1:331\n51#1:332,5\n145#1:337,3\n164#1:340\n164#1:341,2\n172#1:343\n175#1:344,2\n172#1:346\n260#1:347,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u001e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0003J\u0014\u0010\u0011\u001a\u00020\u00102\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002J\u0014\u0010\u0012\u001a\u00020\u00102\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002J4\u0010\u001a\u001a\u00020\u00192\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007J\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0003H\u0002J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0018\u0010$\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0005H\u0002J\u001e\u0010\'\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u00052\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0\u0002H\u0002J\u0010\u0010(\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J&\u0010+\u001a\u00020\u00072\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u0007H\u0002J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010-\u001a\u00020,H\u0002R\u0014\u00100\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008(\u0010/R\u0014\u00102\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008+\u00101R\u0014\u00103\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008$\u00101R\u0014\u00104\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008.\u00101R\u0014\u00105\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001e\u00101R\u0014\u00106\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\'\u00101R\u0014\u00107\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008!\u00101R\u0014\u00108\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008 \u00101R\u0014\u00109\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001f\u00101\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;",
        "",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "list",
        "Landroid/graphics/RectF;",
        "getAllCharRectList",
        "",
        "x",
        "y",
        "lastText",
        "",
        "canExtendSelectionToLastText",
        "link",
        "",
        "ensureParseLinkType",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "analysePageWritingModeByCharRect",
        "analysePageWritingModeByBlockRect",
        "rectList",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "scale",
        "offsetX",
        "offsetY",
        "",
        "testDrawLineRect",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
        "args",
        "selectCharRectList",
        "e",
        "i",
        "h",
        "g",
        "selectedRect",
        "charRect",
        "c",
        "Landroid/graphics/Region;",
        "regions",
        "f",
        "a",
        "allCharRectList",
        "maxUnderlineDistanceThreshold",
        "b",
        "",
        "msg",
        "d",
        "Z",
        "DEBUG",
        "F",
        "LINE_CHAR_EXPAND_PERCENT_SMALL",
        "LINE_CHAR_EXPAND_PERCENT_NORMAL",
        "LINE_CHAR_INTERSECT_PERCENT",
        "UNDERLINE_COVER_CHAR_LINE_PERCENT",
        "COVER_CHAR_INTERSECT_PERCENT",
        "UNDERLINE_DISTANCE_THRESHOLD_MIN",
        "UNDERLINE_DISTANCE_THRESHOLD_MAX",
        "VERTICAL_MIN_PROPORTION",
        "<init>",
        "()V",
        "sdk-readercore_overseasRelease"
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
        "SMAP\nReaderSelectionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderSelectionUtils.kt\ncom/onyx/android/sdk/reader/utils/ReaderSelectionUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,330:1\n1360#2:331\n1446#2,5:332\n1864#2,3:337\n766#2:340\n857#2,2:341\n1855#2:343\n1855#2,2:344\n1856#2:346\n1747#2,3:347\n*S KotlinDebug\n*F\n+ 1 ReaderSelectionUtils.kt\ncom/onyx/android/sdk/reader/utils/ReaderSelectionUtils\n*L\n51#1:331\n51#1:332,5\n145#1:337,3\n164#1:340\n164#1:341,2\n172#1:343\n175#1:344,2\n172#1:346\n260#1:347,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Z

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:F

.field public static final g:F

.field public static final h:F

.field public static final i:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->b:F

    const v0, 0x3f333333    # 0.7f

    sput v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->c:F

    const v1, 0x3ea8f5c3    # 0.33f

    sput v1, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->d:F

    const v1, 0x3f4ccccd    # 0.8f

    sput v1, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->e:F

    const/high16 v1, 0x3e800000    # 0.25f

    sput v1, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->f:F

    const/high16 v1, 0x41200000    # 10.0f

    sput v1, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->h:F

    sput v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->i:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getAllCharRectList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/LineUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LineUtils;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/LineUtils;->isHorizontalLine(FF)Z

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->isScreenPage()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->h:F

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->h:F

    invoke-virtual {p1, v3, v4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->b(Ljava/util/List;Landroid/graphics/RectF;F)F

    move-result p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-eqz v2, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :goto_1
    return-object p1
.end method

.method public final analysePageWritingModeByBlockRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->VERTICAL_RL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    :goto_1
    return-object p0
.end method

.method public final analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analysePageWritingMode char size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    add-int/lit8 v5, v3, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v7, v5

    if-lez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v3, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    int-to-float v0, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->i:F

    mul-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    move v1, v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analysePageWritingMode proportion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->VERTICAL_RL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    :goto_1
    return-object p0
.end method

.method public final b(Ljava/util/List;Landroid/graphics/RectF;F)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/graphics/RectF;",
            "F)F"
        }
    .end annotation

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/LineUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LineUtils;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/LineUtils;->isHorizontalLine(FF)Z

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/LineUtils;->isVerticalLine(FF)Z

    move-result v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    return p3

    :cond_0
    sget v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->c:F

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 v2, -0x40800000    # -1.0f

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->b:F

    :cond_2
    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz v1, :cond_3

    iget v4, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, p3

    iput v4, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :cond_3
    iget v4, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, p3

    iput v4, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :cond_4
    mul-float/2addr v2, v0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    sget p1, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->g:F

    invoke-virtual {p0, v2, p1, p3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clampFloat(FFF)F

    move-result p0

    return p0
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    mul-float/2addr p1, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr p0, p2

    sget p2, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->f:F

    mul-float/2addr p0, p2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final canExtendSelectionToLastText(FFLcom/onyx/android/sdk/reader/api/ReaderSelection;)Z
    .locals 4
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "lastText"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/readercore/R$dimen;->extend_selection_to_last_text_threshold:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p3}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->writingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p3

    sget-object v2, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    const/4 v3, 0x1

    if-ne p3, v2, :cond_1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    :goto_0
    move v0, v3

    :cond_2
    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/UriUtils;->isWebsiteUri(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->text()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public final ensureParseLinkType(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->linkType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->linkType()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->text()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->e(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final f(Landroid/graphics/RectF;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/Region;",
            ">;)Z"
        }
    .end annotation

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/high16 p0, 0x3e800000    # 0.25f

    move v2, p0

    move v3, v1

    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_8

    move v5, p0

    :goto_3
    cmpg-float v6, v5, v4

    if-gez v6, :cond_7

    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, p2

    check-cast v8, Ljava/lang/Iterable;

    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_4

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move v6, v1

    goto :goto_4

    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Region;

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Region;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    move v6, v0

    :goto_4
    if-eqz v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-float/2addr v5, p0

    goto :goto_3

    :cond_7
    add-float/2addr v2, p0

    goto :goto_2

    :cond_8
    const/4 p0, 0x7

    if-lt v3, p0, :cond_9

    goto :goto_5

    :cond_9
    move v0, v1

    :goto_5
    return v0
.end method

.method public final g(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getAllCharRectList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/LineUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LineUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/LineUtils;->isHorizontalLine(FF)Z

    move-result v1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/reader/api/ReaderWritingModeKt;->isVertical(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    xor-int v4, v1, v2

    if-eqz v4, :cond_0

    const-string p1, "the shape orientation is different for text."

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->a(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Landroid/graphics/RectF;

    move-result-object v4

    sget-object v5, Lcom/onyx/android/sdk/reader/extension/CharRectList;->INSTANCE:Lcom/onyx/android/sdk/reader/extension/CharRectList;

    invoke-virtual {v5, v0, v2}, Lcom/onyx/android/sdk/reader/extension/CharRectList;->mergeLineRectanglesByWord(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    sget-object v7, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v7, v6, v4}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_3
    new-instance v7, Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    sget-object v11, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v11, v6, v10}, Lcom/onyx/android/sdk/base/utils/RectUtils;->contains(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v11, v7, v10}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->boundingRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr p1, v0

    sget v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->e:F

    mul-float/2addr p1, v0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_7

    const-string p1, "the shape most intersects second line"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->d(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    invoke-interface {v5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_8
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "selected line > 2 line or null, size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAllCharRectList(Ljava/util/List;)Ljava/util/List;
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
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->charRectList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getAllCharRectList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderWritingModeKt;->isVertical(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    sget-object v1, Lcom/onyx/android/sdk/reader/extension/CharRectList;->INSTANCE:Lcom/onyx/android/sdk/reader/extension/CharRectList;

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/reader/extension/CharRectList;->mergeLineRectanglesByWord(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    sget-object v6, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v6, v2, v5}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isNotBlank(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final i(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getAllCharRectList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

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

    move-object v2, v1

    check-cast v2, Landroid/graphics/RectF;

    sget-object v3, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getShapeRegionList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->f(Landroid/graphics/RectF;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final selectCharRectList(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->isLine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->g(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->isCover()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->h(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->i(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final testDrawLineRect(Ljava/util/List;Landroid/graphics/Bitmap;FFF)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "FFF)V"
        }
    .end annotation

    const-string p0, "rectList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmap"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/extension/CharRectList;->INSTANCE:Lcom/onyx/android/sdk/reader/extension/CharRectList;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/extension/CharRectList;->mergeLineRectanglesByWord(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const p4, -0xff0100

    const/high16 p5, -0x10000

    filled-new-array {p5, p4}, [I

    move-result-object p4

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p5, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p5, 0x1

    if-gez p5, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v0, Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    rem-int/lit8 p5, p5, 0x2

    aget p5, p4, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move p5, v1

    goto :goto_0

    :cond_1
    return-void
.end method
