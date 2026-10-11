.class public final Lcom/onyx/android/sdk/base/utils/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorUtils.kt\ncom/onyx/android/sdk/base/utils/ColorUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,142:1\n731#2,9:143\n37#3,2:152\n117#4:154\n*S KotlinDebug\n*F\n+ 1 ColorUtils.kt\ncom/onyx/android/sdk/base/utils/ColorUtils\n*L\n44#1:143,9\n45#1:152,2\n67#1:154\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u001b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00080\u00101J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0012J!\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00042\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u001c\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001dR\u0014\u0010 \u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001dR\u0014\u0010!\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001dR\u0016\u0010$\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010&\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0016\u0010(\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010#R\u0016\u0010*\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010#R\u0016\u0010-\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010/\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010,\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/ColorUtils;",
        "",
        "",
        "color",
        "",
        "parseRGBColor",
        "red",
        "green",
        "blue",
        "baseColor",
        "",
        "alpha",
        "",
        "multiply",
        "getColorWithAlpha",
        "toCSSHexColor",
        "toRgbaColor",
        "isColorLight",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "isColorDark",
        "foregroundColor",
        "backgroundColor",
        "",
        "calculateLuminance",
        "(ILjava/lang/Integer;)D",
        "blendColor",
        "blend",
        "HEX_COLOR_START",
        "Ljava/lang/String;",
        "HEX_CSS_COLOR_FORMAT",
        "HEX_ARGB_COLOR_FORMAT",
        "RGBA_COLOR_START",
        "RGB_COLOR_START",
        "a",
        "F",
        "RED_COLOR_LIGHT_PERCENT",
        "b",
        "GREEN_COLOR_LIGHT_PERCENT",
        "c",
        "BLUE_COLOR_LIGHT_PERCENT",
        "d",
        "LIGHT_COLOR_VALUE_INTERVAL",
        "e",
        "D",
        "DARK_COLOR_LUMINANCE_LIMIT",
        "f",
        "DARK_COLOR_RATIO",
        "<init>",
        "()V",
        "sdk-base_release"
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
        "SMAP\nColorUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorUtils.kt\ncom/onyx/android/sdk/base/utils/ColorUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,142:1\n731#2,9:143\n37#3,2:152\n117#4:154\n*S KotlinDebug\n*F\n+ 1 ColorUtils.kt\ncom/onyx/android/sdk/base/utils/ColorUtils\n*L\n44#1:143,9\n45#1:152,2\n67#1:154\n*E\n"
    }
.end annotation


# static fields
.field public static final HEX_ARGB_COLOR_FORMAT:Ljava/lang/String; = "#%08X"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEX_COLOR_START:Ljava/lang/String; = "#"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEX_CSS_COLOR_FORMAT:Ljava/lang/String; = "#%06X"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RGBA_COLOR_START:Ljava/lang/String; = "rgba"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RGB_COLOR_START:Ljava/lang/String; = "RGB"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:F

.field public static b:F

.field public static c:F

.field public static d:F

.field public static e:D

.field public static f:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/ColorUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    const v0, 0x3e991687    # 0.299f

    sput v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->a:F

    const v0, 0x3f1645a2    # 0.587f

    sput v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->b:F

    const v0, 0x3de978d5    # 0.114f

    sput v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->c:F

    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->d:F

    const-wide v0, 0x3fd3333333333333L    # 0.3

    sput-wide v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->e:D

    const-wide v0, 0x3fe6666666666666L    # 0.7

    sput-wide v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->f:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic calculateLuminance$default(Lcom/onyx/android/sdk/base/utils/ColorUtils;ILjava/lang/Integer;ILjava/lang/Object;)D
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->calculateLuminance(ILjava/lang/Integer;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getColorWithAlpha$default(Lcom/onyx/android/sdk/base/utils/ColorUtils;IFZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->getColorWithAlpha(IFZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final blend(IIF)I
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p0, p0

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, p3

    mul-float/2addr p0, v3

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr p0, v1

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    const/4 v1, 0x0

    const/16 v4, 0xff

    invoke-static {p0, v1, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static {v0, v1, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    int-to-float p1, p1

    mul-float/2addr p1, v3

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-static {p1, v1, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-static {p0, v0, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public final calculateLuminance(ILjava/lang/Integer;)D
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getColorWithAlpha(IFZ)I
    .locals 0

    const/16 p0, 0xff

    if-eqz p3, :cond_0

    shr-int/lit8 p3, p1, 0x18

    and-int/2addr p3, p0

    int-to-float p3, p3

    mul-float/2addr p3, p2

    int-to-float p2, p0

    div-float p2, p3, p2

    :cond_0
    int-to-float p3, p0

    mul-float/2addr p2, p3

    float-to-int p2, p2

    const/4 p3, 0x0

    invoke-static {p3, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {p0, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    const p2, 0xffffff

    and-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method public final isColorDark(Landroid/graphics/Bitmap;)Z
    .locals 18
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "bitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    const/4 v7, 0x1

    if-lez v1, :cond_0

    if-le v5, v6, :cond_1

    :cond_0
    if-gez v1, :cond_9

    if-gt v6, v5, :cond_9

    :cond_1
    move v8, v3

    move v9, v8

    :goto_0
    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v11

    invoke-virtual {v10}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v12

    invoke-virtual {v10}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v10

    if-lez v10, :cond_2

    if-le v11, v12, :cond_3

    :cond_2
    if-gez v10, :cond_7

    if-gt v12, v11, :cond_7

    :cond_3
    :goto_1
    add-int/2addr v9, v7

    invoke-virtual {v0, v5, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    invoke-static {v13}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isTransparent(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v15, p0

    goto :goto_3

    :cond_4
    invoke-static {v13}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isColorOpaque(I)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_2
    move-object/from16 v15, p0

    invoke-virtual {v15, v13, v14}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->calculateLuminance(ILjava/lang/Integer;)D

    move-result-wide v13

    sget-wide v16, Lcom/onyx/android/sdk/base/utils/ColorUtils;->e:D

    cmpg-double v13, v13, v16

    if-gez v13, :cond_6

    add-int/lit8 v8, v8, 0x1

    :cond_6
    :goto_3
    if-eq v11, v12, :cond_8

    add-int/2addr v11, v10

    goto :goto_1

    :cond_7
    move-object/from16 v15, p0

    :cond_8
    if-eq v5, v6, :cond_a

    add-int/2addr v5, v1

    goto :goto_0

    :cond_9
    move v8, v3

    move v9, v8

    :cond_a
    int-to-double v0, v8

    int-to-double v4, v9

    div-double/2addr v0, v4

    sget-wide v4, Lcom/onyx/android/sdk/base/utils/ColorUtils;->f:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_b

    move v3, v7

    :cond_b
    return v3
.end method

.method public final isColorLight(I)Z
    .locals 2

    sget p0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->a:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    sget v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->b:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    sget v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->c:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    sget p1, Lcom/onyx/android/sdk/base/utils/ColorUtils;->d:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final parseRGBColor(III)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p1, 0x10

    const/high16 p1, -0x1000000

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public final parseRGBColor(Ljava/lang/String;)I
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v6

    :goto_1
    const/high16 v2, -0x1000000

    const-class v8, Lcom/onyx/android/sdk/base/utils/ColorUtils;

    if-eqz v1, :cond_2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "empty color"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    const-string v1, "RGB"

    .line 4
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x2

    if-eqz v1, :cond_7

    const-string v1, "RGB"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    .line 5
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "rgb"

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 6
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    .line 7
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ")"

    const-string v12, ""

    .line 8
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, ","

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v7}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v7

    :goto_2
    if-nez v3, :cond_3

    .line 15
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 16
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_3
    check-cast v1, Ljava/util/Collection;

    new-array v2, v7, [Ljava/lang/String;

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, [Ljava/lang/String;

    .line 19
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    .line 20
    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_6
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    aget-object v2, v1, v7

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 22
    aget-object v3, v1, v6

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 23
    aget-object v1, v1, v9

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, p0

    .line 24
    invoke-virtual {v1, v2, v3, v0}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->parseRGBColor(III)I

    move-result v0

    return v0

    :cond_7
    const-string v1, "#"

    const/4 v3, 0x0

    .line 25
    invoke-static {v0, v1, v7, v9, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_8
    return v2
.end method

.method public final toCSSHexColor(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const p0, 0xffffff

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "#%06X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toRgbaColor(I)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rgba("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
