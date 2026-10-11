.class public final Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,766:1\n1789#2,3:767\n1789#2,3:770\n1789#2,3:773\n1855#2,2:782\n1864#2,3:784\n1864#2,3:787\n1477#2:795\n1502#2,3:796\n1505#2,3:806\n1360#2:809\n1446#2,2:810\n1549#2:812\n1620#2,3:813\n1549#2:816\n1620#2,3:817\n1448#2,3:820\n1549#2:823\n1620#2,2:824\n1789#2,3:826\n1622#2:829\n766#2:840\n857#2,2:841\n3464#2,10:843\n1549#2:853\n1620#2,3:854\n1864#2,3:857\n1789#2,3:865\n703#3,5:776\n703#3,5:790\n703#3,5:830\n703#3,5:835\n703#3,5:860\n1#4:781\n372#5,7:799\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine\n*L\n417#1:767,3\n442#1:770,3\n455#1:773,3\n476#1:782,2\n512#1:784,3\n552#1:787,3\n619#1:795\n619#1:796,3\n619#1:806,3\n621#1:809\n621#1:810,2\n623#1:812\n623#1:813,3\n629#1:816\n629#1:817,3\n621#1:820,3\n634#1:823\n634#1:824,2\n641#1:826,3\n634#1:829\n658#1:840\n658#1:841,2\n666#1:843,10\n690#1:853\n690#1:854,3\n697#1:857,3\n757#1:865,3\n459#1:776,5\n614#1:790,5\n655#1:830,5\n656#1:835,5\n750#1:860,5\n619#1:799,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 32\u00020\u0001:\u00013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000cH\u0002J\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000cJ\"\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0010\u0010\u0016\u001a\u000c\u0012\u0004\u0012\u00020\u00170\u000cj\u0002`\u0018J\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000cJR\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00040\u001b2\u0006\u0010\u001d\u001a\u00020\r2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000c2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%H\u0002J,\u0010&\u001a\u000c\u0012\u0004\u0012\u00020\u00170\u000cj\u0002`\u00182\u0010\u0010\u0016\u001a\u000c\u0012\u0004\u0012\u00020\u00170\u000cj\u0002`\u00182\u0006\u0010$\u001a\u00020%H\u0002J\u0016\u0010\'\u001a\u00020\u00042\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000cH\u0002J\u0016\u0010(\u001a\u00020\u00042\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000cH\u0002J.\u0010)\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u000c2\u0006\u0010*\u001a\u00020+2\u0006\u0010$\u001a\u00020%2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J<\u0010,\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u000c\u0018\u00010\u001b2\u0006\u0010*\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0004H\u0002J4\u00100\u001a\u0016\u0012\u0004\u0012\u00020\u001f\u0018\u000101j\n\u0012\u0004\u0012\u00020\u001f\u0018\u0001`22\u0006\u0010*\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\u0004H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;",
        "",
        "()V",
        "minFontSize",
        "",
        "getMinFontSize",
        "()F",
        "setMinFontSize",
        "(F)V",
        "countExpansionPositions",
        "",
        "textSegments",
        "",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
        "createBlock",
        "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
        "lines",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
        "createBlocks",
        "createLineBox",
        "font",
        "",
        "chars",
        "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
        "Lcom/onyx/android/sdk/neohwr/layout/TextCharBoxList;",
        "createSingleLineBlocks",
        "createTextRun",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
        "segment",
        "glyphs",
        "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;",
        "fontPath",
        "textSize",
        "left",
        "baseline",
        "lineMatrix",
        "Landroid/graphics/Matrix;",
        "deskewCharBoxes",
        "glyphsWidth",
        "guessLineAngle",
        "layoutCharacters",
        "fontNative",
        "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;",
        "loadBestTextGlyphs",
        "text",
        "pixelSize",
        "widthLimit",
        "loadTextGlyphs",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Companion",
        "sdk-neohwr_release"
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
        "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,766:1\n1789#2,3:767\n1789#2,3:770\n1789#2,3:773\n1855#2,2:782\n1864#2,3:784\n1864#2,3:787\n1477#2:795\n1502#2,3:796\n1505#2,3:806\n1360#2:809\n1446#2,2:810\n1549#2:812\n1620#2,3:813\n1549#2:816\n1620#2,3:817\n1448#2,3:820\n1549#2:823\n1620#2,2:824\n1789#2,3:826\n1622#2:829\n766#2:840\n857#2,2:841\n3464#2,10:843\n1549#2:853\n1620#2,3:854\n1864#2,3:857\n1789#2,3:865\n703#3,5:776\n703#3,5:790\n703#3,5:830\n703#3,5:835\n703#3,5:860\n1#4:781\n372#5,7:799\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine\n*L\n417#1:767,3\n442#1:770,3\n455#1:773,3\n476#1:782,2\n512#1:784,3\n552#1:787,3\n619#1:795\n619#1:796,3\n619#1:806,3\n621#1:809\n621#1:810,2\n623#1:812\n623#1:813,3\n629#1:816\n629#1:817,3\n621#1:820,3\n634#1:823\n634#1:824,2\n641#1:826,3\n634#1:829\n658#1:840\n658#1:841,2\n666#1:843,10\n690#1:853\n690#1:854,3\n697#1:857,3\n757#1:865,3\n459#1:776,5\n614#1:790,5\n655#1:830,5\n656#1:835,5\n750#1:860,5\n619#1:799,7\n*E\n"
    }
.end annotation


# static fields
.field private static final CJKLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final baselineExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultLocale:Ljava/util/Locale;

.field private static final lineAngleIgnoreThreshold:F = 15.0f

.field public static final lineDeskewDetectionThreshold:F = 10.0f

.field private static final rectSizeToTextSizeMaxScale:F = 4.0f

.field private static final rectSizeToTextSizeMinScale:F = 0.25f


# instance fields
.field private minFontSize:F


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v2, "CHINESE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v3, "SIMPLIFIED_CHINESE"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    const-string v4, "TRADITIONAL_CHINESE"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    const-string v5, "JAPAN"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string v6, "JAPANESE"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    const-string v7, "KOREA"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v8, "KOREAN"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->CJKLocales:Ljava/util/Set;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->defaultLocale:Ljava/util/Locale;

    new-array v0, v8, [Ljava/lang/Character;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->baselineExceptions:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;FLjava/util/ArrayList;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->loadTextGlyphs$lambda$14(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;FLjava/util/ArrayList;I)V

    return-void
.end method

.method public static final synthetic access$getBaselineExceptions$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->baselineExceptions:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getCJKLocales$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->CJKLocales:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getDefaultLocale$cp()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method private final countExpansionPositions(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;)I"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->access$isCJKLocale(Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getChars()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return p1
.end method

.method private final createBlock(Ljava/util/List;)Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
            ">;)",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float p0, p0, v2

    if-lez p0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v5, Landroid/graphics/RectF;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionRectByCorner(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;-><init>(Ljava/util/List;FLandroid/graphics/RectF;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method private final createTextRun(Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;Ljava/util/List;Ljava/lang/String;FFFLandroid/graphics/Matrix;)Lkotlin/Pair;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;",
            ">;",
            "Ljava/lang/String;",
            "FFF",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-static/range {p7 .. p7}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->isCJKLocale()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v5, p0

    invoke-direct {v5, v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->glyphsWidth(Ljava/util/List;)F

    move-result v5

    sub-float/2addr v3, v5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v11, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    if-gez v7, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v9, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    invoke-virtual {v2, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v2, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v8, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float v8, p6, v8

    invoke-virtual {v9}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v15, v5

    new-instance v5, Landroid/graphics/RectF;

    add-float v0, v11, v13

    move-object/from16 v22, v2

    add-float v2, v8, v15

    invoke-direct {v5, v11, v8, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v2, v1, v8, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v13, v8

    sub-float/2addr v0, v13

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    div-float/2addr v15, v8

    sub-float v8, v16, v15

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v16

    add-float v13, v16, v13

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    add-float v15, v16, v15

    invoke-virtual {v5, v0, v8, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getChars()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getStrokeColor()I

    move-result v18

    new-instance v8, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    const/16 v19, 0x0

    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object v13, v8

    move-object v15, v5

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v21}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v9}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getAdvance()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v2

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-eq v7, v2, :cond_3

    sget-object v2, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->access$isCJKLocale(Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-float/2addr v11, v4

    :cond_3
    move-object/from16 v0, p2

    move v7, v10

    move v8, v12

    move-object/from16 v2, v22

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lkotlin/Pair;

    new-instance v1, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    move-object v5, v1

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;F)V

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final deskewCharBoxes(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            ">;",
            "Landroid/graphics/Matrix;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->Companion:Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;->merge(Ljava/util/Collection;)Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v6, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "deskewCharBoxes() -> shapes should not be empty!"

    invoke-virtual {v5, v6, v8, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getStrokeColor()I

    move-result v5

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    new-instance v14, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x28

    const/4 v3, 0x0

    move-object v6, v14

    move-object v9, v4

    move v11, v5

    move-object/from16 p0, v0

    move-object v0, v14

    move-object v14, v3

    invoke-direct/range {v6 .. v14}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_3

    :cond_4
    move-object/from16 p0, v0

    invoke-static {v1, v15}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-direct {v6, v4, v5, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v6, v5, v4}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_5

    :cond_7
    new-instance v3, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_6
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    return-object v0
.end method

.method private final glyphsWidth(Ljava/util/List;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getAdvance()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method private final guessLineAngle(Ljava/util/List;)F
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    sget-object v7, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->baselineExceptions:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v5, v5

    div-float v8, v2, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v5, v3, v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_4

    goto :goto_3

    :cond_4
    move v4, v9

    :goto_3
    if-eqz v4, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x3

    if-ge p0, v1, :cond_6

    return v0

    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    check-cast v1, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v3, v1

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_4

    :cond_8
    move-object p0, p1

    :goto_5
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    div-int/2addr p1, v5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v1, v5

    if-ne v1, v4, :cond_9

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_6

    :cond_9
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    add-float/2addr v1, p0

    int-to-float p0, v5

    div-float p0, v1, p0

    :goto_6
    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_a

    return v0

    :cond_a
    return p0
.end method

.method private final layoutCharacters(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;Landroid/graphics/Matrix;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;",
            "Landroid/graphics/Matrix;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "append(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_3

    :cond_3
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    invoke-direct {v6, v15, v2, v5, v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->loadBestTextGlyphs(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;Ljava/lang/String;FF)Lkotlin/Pair;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v4, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;

    invoke-virtual {v4, v0, v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;->guessBaseline(Ljava/util/List;Ljava/util/List;)F

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p3 .. p3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v14, 0x0

    move v7, v14

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v14, v10}, Ljava/lang/String;->codePointCount(II)I

    move-result v9

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getRegion()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-int v0, v7, v9

    invoke-static {v2, v7, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->getPath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p0

    move v11, v3

    move v13, v4

    move/from16 v16, v14

    move-object/from16 v14, p2

    invoke-direct/range {v7 .. v14}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->createTextRun(Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;Ljava/util/List;Ljava/lang/String;FFFLandroid/graphics/Matrix;)Lkotlin/Pair;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v14, v16

    move/from16 v17, v7

    move v7, v0

    move/from16 v0, v17

    goto :goto_4

    :cond_5
    return-object v5

    :cond_6
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private final loadBestTextGlyphs(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;Ljava/lang/String;FF)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;",
            "Ljava/lang/String;",
            "FF)",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->minFontSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :cond_0
    add-float v2, v1, v0

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0, p1, p2, v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->loadTextGlyphs(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;Ljava/lang/String;F)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-direct {p0, v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->glyphsWidth(Ljava/util/List;)F

    move-result v4

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_1

    :cond_3
    sub-float/2addr v6, v7

    sub-float v5, v6, p3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x40400000    # 3.0f

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_4

    sub-float v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_4

    new-instance p0, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    cmpg-float v5, v6, p3

    if-gez v5, :cond_5

    cmpg-float v4, v4, p4

    if-gez v4, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    sub-float v4, v0, v1

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_0

    new-instance p0, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method private final loadTextGlyphs(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;Ljava/lang/String;F)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;",
            "Ljava/lang/String;",
            "F)",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x20

    const/16 v2, 0x45

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/kdn;

    invoke-direct {v0, p1, p3, p0}, Lcom/sunia/HTREnginev2/kdn;-><init>(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;FLjava/util/ArrayList;)V

    invoke-interface {p2, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-object p0
.end method

.method private static final loadTextGlyphs$lambda$14(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;FLjava/util/ArrayList;I)V
    .locals 1

    const-string v0, "$fontNative"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->loadGlyphPath(IF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final createBlocks(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v6, v6, v7

    const/4 v7, 0x1

    if-lez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v9, v6, v8

    const/high16 v10, 0x3fc00000    # 1.5f

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_6

    div-float/2addr v8, v6

    cmpl-float v6, v8, v10

    if-lez v6, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v9, v8, v9

    const v10, 0x3f19999a    # 0.6f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v8, v9

    cmpg-float v8, v8, v10

    if-gez v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    add-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    add-float/2addr v3, v8

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v8

    cmpl-float v3, v6, v3

    if-lez v3, :cond_5

    goto :goto_1

    :cond_5
    move v7, v2

    :cond_6
    :goto_1
    if-eqz v7, :cond_7

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->createBlock(Ljava/util/List;)Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v3, v5

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->createBlock(Ljava/util/List;)Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final createLineBox(Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            ">;)",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->guessLineAngle(Ljava/util/List;)F

    move-result v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Landroid/graphics/RectF;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionRectByCorner(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->center(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    neg-float v5, v3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-direct {p0, p2, v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->deskewCharBoxes(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->segmentCharacters(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41700000    # 15.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->center(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v4, v3, v2, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_2
    invoke-direct {p0, p1, v4, p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->layoutCharacters(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;Landroid/graphics/Matrix;Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_3
    :try_start_1
    move-object p0, v2

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Landroid/graphics/RectF;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {v4, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionRectByCorner(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    new-instance p0, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;-><init>(Ljava/util/List;FLandroid/graphics/RectF;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final createSingleLineBlocks(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->createBlock(Ljava/util/List;)Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getMinFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->minFontSize:F

    return p0
.end method

.method public final setMinFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->minFontSize:F

    return-void
.end method
