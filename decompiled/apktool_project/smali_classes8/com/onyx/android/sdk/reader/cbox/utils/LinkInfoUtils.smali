.class public final Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkInfoUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkInfoUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n766#2:106\n857#2,2:107\n1855#2,2:109\n766#2:111\n857#2,2:112\n1855#2,2:114\n766#2:116\n857#2,2:117\n1855#2,2:119\n*S KotlinDebug\n*F\n+ 1 LinkInfoUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils\n*L\n39#1:106\n39#1:107,2\n40#1:109,2\n49#1:111\n49#1:112,2\n50#1:114,2\n73#1:116\n73#1:117,2\n74#1:119,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ&\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00070\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u001c\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0002J\"\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0002J\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\u0013\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0003H\u0002\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;",
        "",
        "",
        "Lcom/onyx/engine/sdk/LinkInfo;",
        "list",
        "",
        "Lcom/onyx/engine/sdk/LinkType;",
        "",
        "splitLinkInfoByType",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "neoNative",
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
        "links",
        "",
        "updateInternalNormalLinkInfo",
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;",
        "imageList",
        "getImageFootnoteLinks",
        "filterInvalidLink",
        "g",
        "link",
        "f",
        "linkInfo",
        "",
        "c",
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
        "SMAP\nLinkInfoUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkInfoUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n766#2:106\n857#2,2:107\n1855#2,2:109\n766#2:111\n857#2,2:112\n1855#2,2:114\n766#2:116\n857#2,2:117\n1855#2,2:119\n*S KotlinDebug\n*F\n+ 1 LinkInfoUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils\n*L\n39#1:106\n39#1:107,2\n40#1:109,2\n49#1:111\n49#1:112,2\n50#1:114,2\n73#1:116\n73#1:117,2\n74#1:119,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/onyx/engine/sdk/LinkInfo;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/LinkInfo;->getAnchor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/LinkInfo;->getHref()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

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

.method public final f(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/LinkInfo;->isInvalidTarget()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/LinkInfo;->getTarget()Lcom/onyx/engine/sdk/LinkTarget;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/LinkTarget;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->setTargetText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/LinkInfo;->getTarget()Lcom/onyx/engine/sdk/LinkTarget;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/LinkTarget;->getLinkType()Lcom/onyx/engine/sdk/LinkType;

    move-result-object p0

    const-string v0, "getLinkType(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->setLinkType(Lcom/onyx/engine/sdk/LinkType;)V

    return-void
.end method

.method public final filterInvalidLink(Ljava/util/List;)Ljava/util/List;
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
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/LinkInfo;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->c(Lcom/onyx/engine/sdk/LinkInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->f(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getImageFootnoteLinks(Lcom/onyx/engine/sdk/NeoBaseNative;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
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
            "Lcom/onyx/engine/sdk/NeoBaseNative;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "neoNative"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "imageList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/ImageInfo;->isLink()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getFootNote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;

    new-instance v0, Lcom/onyx/engine/sdk/LinkInfo;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/LinkInfo;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getXpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/LinkInfo;->setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkInfo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/LinkInfo;->setRect(Landroid/graphics/RectF;)Lcom/onyx/engine/sdk/LinkInfo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PinPosition;->copy()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/LinkInfo;->setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/LinkInfo;

    sget-object v1, Lcom/onyx/engine/sdk/WritingMode;->HORIZONTAL:Lcom/onyx/engine/sdk/WritingMode;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/LinkInfo;->setWritingMode(Lcom/onyx/engine/sdk/WritingMode;)Lcom/onyx/engine/sdk/LinkInfo;

    new-instance v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;-><init>(Lcom/onyx/engine/sdk/LinkInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/ImageInfo;->getFootNote()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->setTargetText(Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/engine/sdk/LinkType;->NORMAL_POSITION:Lcom/onyx/engine/sdk/LinkType;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->setLinkType(Lcom/onyx/engine/sdk/LinkType;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public final splitLinkInfoByType(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/onyx/engine/sdk/LinkType;",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/LinkInfo;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/LinkInfo;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/UriUtils;->isWebsiteUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/engine/sdk/LinkType;->WEBSITE:Lcom/onyx/engine/sdk/LinkType;

    sget-object v2, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils$splitLinkInfoByType$1;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils$splitLinkInfoByType$1;

    new-instance v3, Lcom/sunia/HTREnginev2/zyi;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/zyi;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    sget-object v2, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils$splitLinkInfoByType$2;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils$splitLinkInfoByType$2;

    new-instance v3, Lcom/sunia/HTREnginev2/azi;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/azi;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final updateInternalNormalLinkInfo(Lcom/onyx/engine/sdk/NeoBaseNative;Ljava/util/List;)V
    .locals 8
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
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
            "Lcom/onyx/engine/sdk/NeoBaseNative;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "neoNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "links"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkType()Lcom/onyx/engine/sdk/LinkType;

    move-result-object v6

    sget-object v7, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-interface {p1, v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getLinkTarget(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->g(Ljava/util/List;)V

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;

    const-string v0, "get link target failed"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkType()Lcom/onyx/engine/sdk/LinkType;

    move-result-object v0

    sget-object v1, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    if-ne v0, v1, :cond_7

    move v0, v4

    goto :goto_5

    :cond_7
    move v0, v5

    :goto_5
    if-eqz v0, :cond_6

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    sget-object p2, Lcom/onyx/engine/sdk/LinkType;->NORMAL_POSITION:Lcom/onyx/engine/sdk/LinkType;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->setLinkType(Lcom/onyx/engine/sdk/LinkType;)V

    goto :goto_6

    :cond_9
    return-void
.end method
