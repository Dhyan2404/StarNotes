.class public final Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFixedDocumentPageTextHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FixedDocumentPageTextHelper.kt\ncom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,286:1\n350#2,7:287\n350#2,7:294\n766#2:301\n857#2,2:302\n766#2:304\n857#2,2:305\n*S KotlinDebug\n*F\n+ 1 FixedDocumentPageTextHelper.kt\ncom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper\n*L\n132#1:287,7\n142#1:294,7\n234#1:301\n234#1:302,2\n256#1:304\n256#1:305,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 >2\u00020\u0001:\u0001>B\'\u0012\u0006\u0010/\u001a\u00020)\u0012\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020100\u0012\u0008\u0008\u0002\u0010;\u001a\u00020\u000f\u00a2\u0006\u0004\u0008<\u0010=J(\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bJ4\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\rH\u0002J \u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002J*\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\rH\u0002J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0018\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\tH\u0002J\u0018\u0010$\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u000bH\u0002J\u0018\u0010%\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u000bH\u0002J\u0010\u0010(\u001a\u00020!2\u0006\u0010\'\u001a\u00020&H\u0002R\"\u0010/\u001a\u00020)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R(\u00107\u001a\u0008\u0012\u0004\u0012\u000201008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0017\u0010;\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00108\u001a\u0004\u00089\u0010:\u00a8\u0006?"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;",
        "",
        "Landroid/graphics/RectF;",
        "pageOriginSize",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;",
        "start",
        "end",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;",
        "hitTestOptions",
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
        "selectOnScreen",
        "",
        "charIndex",
        "",
        "isValidCharIndex",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "writingMode",
        "isSelectingWord",
        "k",
        "Landroid/graphics/PointF;",
        "pointF",
        "",
        "paddingLeftRight",
        "paddingTopBottom",
        "d",
        "g",
        "c",
        "h",
        "wordStartPos",
        "wordEndPos",
        "a",
        "b",
        "selection",
        "",
        "j",
        "anchorIndex",
        "f",
        "e",
        "",
        "msg",
        "i",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getPagePosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "setPagePosition",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
        "pagePosition",
        "",
        "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
        "Ljava/util/List;",
        "getCharInfoList",
        "()Ljava/util/List;",
        "setCharInfoList",
        "(Ljava/util/List;)V",
        "charInfoList",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "getPageWritingMode",
        "()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "pageWritingMode",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V",
        "Companion",
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
        "SMAP\nFixedDocumentPageTextHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FixedDocumentPageTextHelper.kt\ncom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,286:1\n350#2,7:287\n350#2,7:294\n766#2:301\n857#2,2:302\n766#2:304\n857#2,2:305\n*S KotlinDebug\n*F\n+ 1 FixedDocumentPageTextHelper.kt\ncom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper\n*L\n132#1:287,7\n142#1:294,7\n234#1:301\n234#1:302,2\n256#1:304\n256#1:305,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final INVALID_INDEX:I = -0x1


# instance fields
.field public a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->Companion:Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
            ")V"
        }
    .end annotation

    const-string v0, "pagePosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charInfoList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageWritingMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->c:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 5
    sget-object p3, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->UNKNOWN:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b(II)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p1

    sget-object p2, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;->analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->j(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)V

    return-object p1
.end method

.method public final b(II)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object p2, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createFixedPageRange(I)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-gt v1, p1, :cond_0

    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v4, p1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, v1, p1}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setCharRectList(Ljava/util/List;)V

    return-object p0
.end method

.method public final c(IZ)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p1, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->h(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    :goto_2
    return p1
.end method

.method public final d(Landroid/graphics/PointF;FF)I
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-ltz v2, :cond_2

    return v2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pointF: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " paddingLeftRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " paddingTopBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v3, p2, v0

    if-gtz v3, :cond_3

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_3

    return v2

    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-static {v0, p2, p3}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v4
.end method

.method public final e(Landroid/graphics/PointF;I)I
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v6, p1, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v7, v8}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasHorizontalOverlapWith$default(Landroid/graphics/RectF;FFILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pointF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", horizontalHitTestList, size = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", indexOfFirst = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", indexOfLast = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", anchorIndex = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hitTestIndex = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->i(Ljava/lang/String;)V

    return v0
.end method

.method public final f(Landroid/graphics/PointF;I)I
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v6, p1, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v7, v8}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasVerticalOverlapWith$default(Landroid/graphics/RectF;FFILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pointF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", hitTestVerticalLine, size = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", indexOfFirst = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", indexOfLast = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", anchorIndex = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hitTestIndex = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->i(Ljava/lang/String;)V

    return v0
.end method

.method public final g(Landroid/graphics/PointF;FFLcom/onyx/android/sdk/reader/api/ReaderWritingMode;)I
    .locals 0

    invoke-static {p4}, Lcom/onyx/android/sdk/reader/api/ReaderWritingModeKt;->isVertical(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p3, p2}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->d(Landroid/graphics/PointF;FF)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->d(Landroid/graphics/PointF;FF)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getCharInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getPagePosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final getPageWritingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->c:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    return-object p0
.end method

.method public final h(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->firstOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CharKt;->isAlpha(C)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final isValidCharIndex(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/reader/extension/CharRectList;->INSTANCE:Lcom/onyx/android/sdk/reader/extension/CharRectList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/extension/CharRectList;->mergeBlockRectanglesByWord(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final k(Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;Z)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 8

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPointInDocument()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPointInDocument()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getHitTestPadding()F

    move-result v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, v4, v4}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->d(Landroid/graphics/PointF;FF)I

    move-result v5

    :goto_2
    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p3

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3, v4, v4}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->d(Landroid/graphics/PointF;FF)I

    move-result p3

    :goto_3
    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/android/sdk/readercore/R$dimen;->select_text_selecting_hit_test_horizontal_padding:I

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPageScale()F

    move-result v7

    div-float/2addr v6, v7

    sget v7, Lcom/onyx/android/sdk/readercore/R$dimen;->select_text_selecting_hit_test_vertical_padding:I

    invoke-virtual {v4, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPageScale()F

    move-result p2

    div-float/2addr v4, p2

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_5
    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, v0, v6, v4, p4}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->g(Landroid/graphics/PointF;FFLcom/onyx/android/sdk/reader/api/ReaderWritingMode;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {p4}, Lcom/onyx/android/sdk/reader/api/ReaderWritingModeKt;->isVertical(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->e(Landroid/graphics/PointF;I)I

    move-result p2

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v0, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->f(Landroid/graphics/PointF;I)I

    move-result p2

    :goto_4
    move v5, p2

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0, v3, v6, v4, p4}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->g(Landroid/graphics/PointF;FFLcom/onyx/android/sdk/reader/api/ReaderWritingMode;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {p4}, Lcom/onyx/android/sdk/reader/api/ReaderWritingModeKt;->isVertical(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, v3, v5}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->e(Landroid/graphics/PointF;I)I

    move-result p2

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v3, v5}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->f(Landroid/graphics/PointF;I)I

    move-result p2

    :goto_5
    move p3, p2

    :cond_9
    :goto_6
    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->isValidCharIndex(I)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_8

    :cond_a
    if-nez p5, :cond_b

    invoke-virtual {p0, v5, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->a(II)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ne p2, p3, :cond_c

    move p2, v2

    goto :goto_7

    :cond_c
    move p2, v1

    :goto_7
    if-nez p2, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {p0, v5, v1}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->c(IZ)I

    move-result p4

    invoke-virtual {p0, p3, p2}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->c(IZ)I

    move-result p2

    invoke-virtual {p0, p4, p2}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->a(II)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_e
    :goto_8
    return-object p1

    :catchall_0
    move-exception p0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final selectOnScreen(Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 7
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageOriginSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->c:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;->isSelectingWord()Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->k(Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;Z)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public final setCharInfoList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->b:Ljava/util/List;

    return-void
.end method

.method public final setPagePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method
