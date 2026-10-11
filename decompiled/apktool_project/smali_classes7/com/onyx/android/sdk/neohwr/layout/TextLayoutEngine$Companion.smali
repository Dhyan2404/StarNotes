.class public final Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;,
        Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;,
        Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextScriptSegmenter;,
        Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;,
        Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;,
        Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1789#2,3:767\n1789#2,3:770\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion\n*L\n378#1:767,3\n391#1:770,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0006 !\"#$%B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0018\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0010\u0010\u001d\u001a\u000c\u0012\u0004\u0012\u00020\u00110\u001bj\u0002`\u001eJ\u001e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0010\u0010\u001d\u001a\u000c\u0012\u0004\u0012\u00020\u00110\u001bj\u0002`\u001eR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \t*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;",
        "",
        "()V",
        "CJKLocales",
        "",
        "Ljava/util/Locale;",
        "baselineExceptions",
        "",
        "defaultLocale",
        "kotlin.jvm.PlatformType",
        "lineAngleIgnoreThreshold",
        "",
        "lineDeskewDetectionThreshold",
        "rectSizeToTextSizeMaxScale",
        "rectSizeToTextSizeMinScale",
        "getCharacterLocale",
        "ch",
        "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
        "isCJKCharacter",
        "",
        "codePoint",
        "",
        "isCJKLocale",
        "locale",
        "isCJKPunctuation",
        "isLocaleMatches",
        "segmentCharacters",
        "",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
        "chars",
        "Lcom/onyx/android/sdk/neohwr/layout/TextCharBoxList;",
        "segmentCharactersByDistance",
        "BaselineCalculator",
        "TextDistanceSegmenter",
        "TextScriptSegmenter",
        "TextSegment",
        "TextSegmenter",
        "TextWhiteSpaceSegmenter",
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
        "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1789#2,3:767\n1789#2,3:770\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion\n*L\n378#1:767,3\n391#1:770,3\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCharacterLocale(Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Ljava/util/Locale;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->getCharacterLocale(Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isCJKLocale(Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;Ljava/util/Locale;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKLocale(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLocaleMatches(Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;Ljava/util/Locale;Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isLocaleMatches(Ljava/util/Locale;Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Z

    move-result p0

    return p0
.end method

.method private final getCharacterLocale(Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Ljava/util/Locale;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKCharacter(Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string p1, "CHINESE"

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p1, "US"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final isCJKCharacter(Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKCharacter(I)Z

    move-result p0

    return p0
.end method

.method private final isCJKLocale(Ljava/util/Locale;)Z
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->access$getCJKLocales$cp()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isLocaleMatches(Ljava/util/Locale;Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Z
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKCharacter(Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKLocale(Ljava/util/Locale;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKCharacter(Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final isCJKCharacter(I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isIdeographic(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKPunctuation(I)Z

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

.method public final isCJKPunctuation(I)Z
    .locals 3

    const/16 p0, 0x3000

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p0, p1, :cond_0

    const/16 p0, 0x3040

    if-ge p1, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_7

    const p0, 0x16fe0

    if-gt p0, p1, :cond_1

    const p0, 0x17000

    if-ge p1, p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p0, :cond_7

    const p0, 0xfe30

    const v2, 0xfe50

    if-gt p0, p1, :cond_2

    if-ge p1, v2, :cond_2

    move p0, v0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-nez p0, :cond_7

    const p0, 0xff00

    if-gt p0, p1, :cond_3

    const p0, 0xfff0

    if-ge p1, p0, :cond_3

    move p0, v0

    goto :goto_3

    :cond_3
    move p0, v1

    :goto_3
    if-nez p0, :cond_7

    if-gt v2, p1, :cond_4

    const p0, 0xfe70

    if-ge p1, p0, :cond_4

    move p0, v0

    goto :goto_4

    :cond_4
    move p0, v1

    :goto_4
    if-nez p0, :cond_7

    const p0, 0xfe10

    if-gt p0, p1, :cond_5

    const p0, 0xfe20

    if-ge p1, p0, :cond_5

    move p0, v0

    goto :goto_5

    :cond_5
    move p0, v1

    :goto_5
    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    :cond_7
    :goto_6
    return v0
.end method

.method public final segmentCharacters(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "chars"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array p0, p0, [Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;

    new-instance v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextScriptSegmenter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextScriptSegmenter;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;

    invoke-static {}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->access$getDefaultLocale$cp()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "access$getDefaultLocale$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;->create(Ljava/util/List;Ljava/util/Locale;)Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    move-result-object p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;->segment(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final segmentCharactersByDistance(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "chars"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;-><init>()V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;

    invoke-static {}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->access$getDefaultLocale$cp()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "access$getDefaultLocale$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;->create(Ljava/util/List;Ljava/util/Locale;)Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    move-result-object p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;->segment(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
